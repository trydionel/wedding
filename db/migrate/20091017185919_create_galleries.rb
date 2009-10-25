class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
    add_column :photos, :gallery_id, :integer
  end

  def self.down
    drop_table :galleries
    remove_column :photos, :gallery_id
  end
end
