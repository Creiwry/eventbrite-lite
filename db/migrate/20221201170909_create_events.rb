class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.integer :duration
      t.integer :price
      t.belongs_to :administrator, index: true

      t.timestamps
    end
  end
end
