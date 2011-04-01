require "spec_helper"

describe VotablesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/votables" }.should route_to(:controller => "votables", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/votables/new" }.should route_to(:controller => "votables", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/votables/1" }.should route_to(:controller => "votables", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/votables/1/edit" }.should route_to(:controller => "votables", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/votables" }.should route_to(:controller => "votables", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/votables/1" }.should route_to(:controller => "votables", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/votables/1" }.should route_to(:controller => "votables", :action => "destroy", :id => "1")
    end

  end
end
