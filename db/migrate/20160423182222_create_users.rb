class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :unique_code
      t.string :relationship_to_child
      t.float :child_age
      t.string :purchase_occasion
      t.string :gender
      t.integer :age
      t.boolean :has_children
      t.string :email
      t.datetime :started_survey_at
      t.datetime :submitted_survey_at
      t.string :network_id

      t.timestamps null: false
    end
  end
end
