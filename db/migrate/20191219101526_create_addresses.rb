class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string     :post_code, null: false
      t.integer    :prefecture_id, null: false
      t.string     :city, null: false
      t.string     :address, null: false
      t.string     :build
      t.string     :phone_number
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end