require 'spec_helper'

describe "votables/new.html.erb" do
  before(:each) do
    assign(:votable, stub_model(Votable,
      :name => "MyString",
      :votes_per_round => 1
    ).as_new_record)
  end

  it "renders new votable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votables_path, :method => "post" do
      assert_select "input#votable_name", :name => "votable[name]"
      assert_select "input#votable_votes_per_round", :name => "votable[votes_per_round]"
    end
  end
end
