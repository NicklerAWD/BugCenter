class ChangeTypeTo < ActiveRecord::Migration
  def up
  	change_column :bugs, :description, :text
  	change_column :bugs, :steps, :text
  end

  def down
  end
end
