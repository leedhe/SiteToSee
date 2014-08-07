class AddCNameToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :c_name, :string
  end
end
