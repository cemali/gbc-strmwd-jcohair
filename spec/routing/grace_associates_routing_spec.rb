require "spec_helper"

describe GraceAssociatesController do
  describe "routing" do

    it "routes to #index" do
      get("/grace_associates").should route_to("grace_associates#index")
    end

    it "routes to #new" do
      get("/grace_associates/new").should route_to("grace_associates#new")
    end

    it "routes to #show" do
      get("/grace_associates/1").should route_to("grace_associates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grace_associates/1/edit").should route_to("grace_associates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grace_associates").should route_to("grace_associates#create")
    end

    it "routes to #update" do
      put("/grace_associates/1").should route_to("grace_associates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grace_associates/1").should route_to("grace_associates#destroy", :id => "1")
    end

  end
end
