require 'spec_helper'

describe "/admin/pages/edit" do
  before(:each) do
    render 'admin/pages/edit'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/admin/pages/edit])
  end
end
