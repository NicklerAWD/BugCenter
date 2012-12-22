class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :user_id
      t.text :result
      t.text :comment

      t.timestamps
    end
  end
end
