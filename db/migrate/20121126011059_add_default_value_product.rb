class AddDefaultValueProduct < ActiveRecord::Migration
  def up
  	change_column :products, :active, :boolean, :default => false
  	change_column :products, :internal, :boolean, :default => false
  end

  def down
  end
end
