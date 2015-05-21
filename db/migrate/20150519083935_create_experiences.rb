class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.references :item, index: true
      t.float :price
      t.string :bought_at

      t.timestamps null: false
    end
    add_foreign_key :experiences, :items
  end
end
