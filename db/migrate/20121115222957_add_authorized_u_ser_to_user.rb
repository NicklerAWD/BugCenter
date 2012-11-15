class AddAuthorizedUSerToUser < ActiveRecord::Migration
  def change
  	add_column :users, :authouser, :boolean, default: false
  end
end
