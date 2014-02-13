require "spec_helper"

describe PlatformCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/platform_categories").should route_to("platform_categories#index")
    end

    it "routes to #new" do
      get("/platform_categories/new").should route_to("platform_categories#new")
    end

    it "routes to #show" do
      get("/platform_categories/1").should route_to("platform_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/platform_categories/1/edit").should route_to("platform_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/platform_categories").should route_to("platform_categories#create")
    end

    it "routes to #update" do
      put("/platform_categories/1").should route_to("platform_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/platform_categories/1").should route_to("platform_categories#destroy", :id => "1")
    end

  end
end
