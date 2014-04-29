class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.text :content
      t.integer :bookkeeping_id

      t.timestamps
    end
  end
end
