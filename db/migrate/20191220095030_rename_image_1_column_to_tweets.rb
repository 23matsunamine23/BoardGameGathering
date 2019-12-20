class RenameImage1ColumnToTweets < ActiveRecord::Migration[5.2]
  def change
    rename_column :tweets, :image_1, :image1
    rename_column :tweets, :image_2, :image2
  end
end
