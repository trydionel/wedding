class RemoveStaticPages < ActiveRecord::Migration
  def self.up
  	drop_table 'static_pages'
  end

  def self.down
	  create_table "static_pages", :force => true do |t|
	    t.string   "href"
	    t.text     "content"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	  end
  end
end
