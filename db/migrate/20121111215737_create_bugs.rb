class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :bug_title
      t.string :bug_type
      t.string :version
      t.string :product
      t.string :description
      t.string :steps
      t.string :priority

      t.timestamps
    end
  end
end
