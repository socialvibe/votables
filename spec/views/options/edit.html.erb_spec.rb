require 'spec_helper'

describe "options/edit.html.erb" do
  before(:each) do
    @option = assign(:option, stub_model(Option,
      :votable_id => 1,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit option form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => options_path(@option), :method => "post" do
      assert_select "input#option_votable_id", :name => "option[votable_id]"
      assert_select "input#option_name", :name => "option[name]"
      assert_select "input#option_description", :name => "option[description]"
    end
  end
end
