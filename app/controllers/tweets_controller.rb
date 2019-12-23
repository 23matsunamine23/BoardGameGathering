class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order(created_at: :desc).page(params[:page]).per(10)
  end
  def new
    @tweet = Tweet.new
  end
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save
    render "tops/index"
  end
  def show
  end
  def mine
    @tweets = current_user.tweets.order(created_at: :desc).page(params[:page]).per(10)
  end


  private
  def tweet_params
    params.require(:tweet).permit(:body, :image1, :image2)
  end
end
