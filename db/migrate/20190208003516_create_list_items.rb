class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table  :list_items do |t|
      t.integer :list_id
      t.integer :item_id
      t.integer :quantity, default=>1
    end
  end

end