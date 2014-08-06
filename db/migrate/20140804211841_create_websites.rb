class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :site_url
      t.string :site_name

      t.timestamps
    end
  end
end
