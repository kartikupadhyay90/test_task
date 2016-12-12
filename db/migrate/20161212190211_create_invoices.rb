class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :description
      t.float :amount
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
