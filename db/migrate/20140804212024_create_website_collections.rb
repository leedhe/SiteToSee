class CreateWebsiteCollections < ActiveRecord::Migration
  def change
    create_table :website_collections do |t|
      t.integer :website_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
