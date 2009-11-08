class RenameGalleriesNameToTitle < ActiveRecord::Migration
  def self.up
  	rename_column 'galleries', 'name', 'title'
  end

  def self.down
  	rename_column 'galleries', 'title', 'name'
  end
end
