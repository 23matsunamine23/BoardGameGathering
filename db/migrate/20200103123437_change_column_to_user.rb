class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :like_games, :string, default: ""
  end
end
