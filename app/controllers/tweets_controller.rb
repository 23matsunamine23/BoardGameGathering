class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,only: [:show]
  def index
    @tweets = Tweet.order(created_at: :desc).page(params[:page]).per(10)
    @like = Like.new
  end
  def new
    @tweet = Tweet.new
  end
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    if @tweet.save
      render "tops/index"
    else
      render :new
    end
  end
  def show
    @comment = Comment.new
    @comments = @tweet.comments
  end
  def edit
  end
  def update
    @tweet.update(tweet_params) if @tweet.user_id == current_user.id
    redirect_to tweet_path(@tweet)
  end
  def destroy
    @tweet.destroy if @tweet.user_id == current_user.id
    redirect_to tweets_path
  end
  def mine
    @tweets = current_user.tweets.order(created_at: :desc).page(params[:page]).per(10)
  end
  def favo
    @tweets = current_user.liked_tweets.order(created_at: :desc).page(params[:page]).per(10)
  end
  def search
    @tweets = Tweet.joins(:user).where('(body LIKE ?) OR (name LIKE ?)', "%#{params[:keyword]}%", "%#{params[:keyword]}%").order(created_at: :desc).page(params[:page]).per(10)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :image1, :image2)
  end
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
