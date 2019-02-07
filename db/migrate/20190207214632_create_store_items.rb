class CreateStoreItems < ActiveRecord::Migration[5.2]
  def change
    create_table :store_items do |t|
      t.belongs_to :store, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true
      t.float :price
      t.timestamps null: false
    end
  end
end
