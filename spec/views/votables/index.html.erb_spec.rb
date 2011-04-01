require 'spec_helper'

describe "votables/index.html.erb" do
  before(:each) do
    assign(:votables, [
      stub_model(Votable,
        :name => "Name",
        :votes_per_round => 1
      ),
      stub_model(Votable,
        :name => "Name",
        :votes_per_round => 1
      )
    ])
  end

  it "renders a list of votables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
