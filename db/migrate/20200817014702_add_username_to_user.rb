class AddUsernameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, null: false, unique: true, default: ""
  end
end
