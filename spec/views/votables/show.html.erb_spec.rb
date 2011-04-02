require 'spec_helper'

describe "votables/show.html.erb" do
  before(:each) do
    @votable = assign(:votable, stub_model(Votable,
      :name => "Name",
      :votes_per_round => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
