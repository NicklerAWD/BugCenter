class AddInternalUserToUser < ActiveRecord::Migration
  def change
  	add_column :users, :intuser, :boolean, default: false
  end
end
