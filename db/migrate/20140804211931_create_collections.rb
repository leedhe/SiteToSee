class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :site_name
      t.integer :site_id
      t.string :site_url

      t.timestamps
    end
  end
end
