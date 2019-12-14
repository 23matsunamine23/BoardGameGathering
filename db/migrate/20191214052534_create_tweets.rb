class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :body
      t.string :image_1
      t.string :image_2
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
