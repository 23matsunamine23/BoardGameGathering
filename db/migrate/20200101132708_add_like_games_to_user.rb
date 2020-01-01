class AddLikeGamesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :like_games, :string, null: false
  end
end
