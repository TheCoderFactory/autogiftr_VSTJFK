class AddSlugToGift < ActiveRecord::Migration
  def change
    add_column :gifts, :slug, :string
    add_index :gifts, :slug, unique: true
  end
end
