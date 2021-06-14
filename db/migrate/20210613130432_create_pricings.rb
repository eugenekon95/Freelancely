class CreatePricings < ActiveRecord::Migration[6.1]
  def change
    create_table :pricings do |t|
      t.string :title
      t.text :description
      t.integer :completion_time
      t.decimal :price
      t.integer :pricing_type
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
