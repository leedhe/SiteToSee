class CreateCollectionPanels < ActiveRecord::Migration
  def change
    create_table :collection_panels do |t|
      t.string :name
      t.string :links
      t.integer :user_id

      t.timestamps
    end
  end
end
