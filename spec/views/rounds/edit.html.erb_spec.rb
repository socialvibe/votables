require 'spec_helper'

describe "rounds/edit.html.erb" do
  before(:each) do
    @round = assign(:round, stub_model(Round,
      :votable_id => 1,
      :number => 1,
      :allowed_winners => 1
    ))
  end

  it "renders the edit round form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rounds_path(@round), :method => "post" do
      assert_select "input#round_votable_id", :name => "round[votable_id]"
      assert_select "input#round_number", :name => "round[number]"
      assert_select "input#round_allowed_winners", :name => "round[allowed_winners]"
    end
  end
end
