require 'spec_helper'

describe "votables/edit.html.erb" do
  before(:each) do
    @votable = assign(:votable, stub_model(Votable,
      :name => "MyString",
      :votes_per_round => 1
    ))
  end

  it "renders the edit votable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votables_path(@votable), :method => "post" do
      assert_select "input#votable_name", :name => "votable[name]"
      assert_select "input#votable_votes_per_round", :name => "votable[votes_per_round]"
    end
  end
end
