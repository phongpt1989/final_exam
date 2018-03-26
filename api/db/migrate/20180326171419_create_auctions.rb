class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.string :title
      t.text :details
      t.datetime :end_on
      t.integer :reserve_price

      t.timestamps
    end
  end
end
