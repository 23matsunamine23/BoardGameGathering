require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe '#create' do
    context 'can save' do
      it '本文があれば保存できる' do
        expect(build(:tweet, image1: nil, image2: nil)).to be_valid
      end

      it '画像があれば保存できる' do
        expect(build(:tweet, body: nil)).to be_valid
      end

      it '本文と画像があれば保存できる' do
        expect(build(:tweet)).to be_valid
      end
    end

    context 'can not save' do
      it '本文も画像も無いと保存できない' do
        tweet = build(:tweet, body: nil, image1: nil, image2: nil)
        tweet.valid?
        expect(tweet.errors[:body]).to include('を入力してください')
      end

      it 'user_idが無いと保存できない' do
        tweet = build(:tweet, user_id: nil)
        tweet.valid?
        expect(tweet.errors[:user]).to include("を入力してください")
      end
    end
  end
end