require "spec_helper"

describe ReclamacaosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/reclamacaos" }.should route_to(:controller => "reclamacaos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/reclamacaos/new" }.should route_to(:controller => "reclamacaos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/reclamacaos/1" }.should route_to(:controller => "reclamacaos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/reclamacaos/1/edit" }.should route_to(:controller => "reclamacaos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/reclamacaos" }.should route_to(:controller => "reclamacaos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/reclamacaos/1" }.should route_to(:controller => "reclamacaos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/reclamacaos/1" }.should route_to(:controller => "reclamacaos", :action => "destroy", :id => "1")
    end

  end
end
