class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :bio
      t.integer :amount_raised
      t.integer :amount_needed

      t.timestamps
    end
  end
end
