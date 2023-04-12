class CreateSpices < ActiveRecord::Migration[7.0]
  def change
    create_table :spices do |t|
      t.string :name
      t.integer :quantity
      t.string :unit
      t.boolean :ground

      t.timestamps
    end
  end
end
