require 'spec_helper'

describe "votes/new.html.erb" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :option_id => 1,
      :user_id => 1,
      :round_id => 1
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path, :method => "post" do
      assert_select "input#vote_option_id", :name => "vote[option_id]"
      assert_select "input#vote_user_id", :name => "vote[user_id]"
      assert_select "input#vote_round_id", :name => "vote[round_id]"
    end
  end
end
