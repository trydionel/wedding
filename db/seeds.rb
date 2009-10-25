User.create(:username => "jeff", :password => "trydionel", :password_confirmation => "trydionel")
User.create(:username => "alayna", :password => "thymebombe", :password_confirmation => "thymebombe")

StaticPage.create(:href => "info", :content => "<h3>Generate Wedding Information</h3><p>The wedding will be held on the first of May, two-thousand-and-ten.</p>")
StaticPage.create(:href => "story", :content => "<h3>Our Story</h3><p>Before they met, they lived just over one mile from each other, and worked only a block apart.  Their first encounter, though, was online.  Jeff found her on a social networking website and, after a brief exchange of messages, they decided to meet.</p>")

Gallery.create(:name => "Engagement", :description => "Photos during Jeff & Alayna's engagement period")
Gallery.create(:name => "Wedding", :description => "Photos during Jeff & Alayna's wedding")
Gallery.create(:name => "Miscellaneous", :description => "Various photos of Jeff, Alayna, and their family")

