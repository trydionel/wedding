User.create(:username => "jeff", :email => "trydionel@gmail.com", :password => "trydionel", :password_confirmation => "trydionel")
User.create(:username => "alayna", :email => "thymebombe@yahoo.com", :password => "thymebombe", :password_confirmation => "thymebombe")

Gallery.create(:title => "Engagement", :description => "Photos during Jeff & Alayna's engagement period")
Gallery.create(:title => "Wedding", :description => "Photos during Jeff & Alayna's wedding")
Gallery.create(:title => "Miscellaneous", :description => "Various photos of Jeff, Alayna, and their family")

