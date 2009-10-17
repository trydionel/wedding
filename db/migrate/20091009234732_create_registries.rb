class CreateRegistries < ActiveRecord::Migration
  def self.up
    create_table :registries do |t|
      t.string :url
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :registries
  end
end
