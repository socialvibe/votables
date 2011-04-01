require 'spec_helper'

describe "options/index.html.erb" do
  before(:each) do
    assign(:options, [
      stub_model(Option,
        :votable_id => 1,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Option,
        :votable_id => 1,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of options" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
