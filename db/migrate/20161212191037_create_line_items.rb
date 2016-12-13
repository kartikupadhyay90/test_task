class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.text :description
      t.float :amount
      t.belongs_to :invoice, index: true
      t.timestamps null: false
    end
  end
end
