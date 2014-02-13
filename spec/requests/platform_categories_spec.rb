require 'spec_helper'

describe "PlatformCategories" do
  describe "GET /platform_categories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get platform_categories_path
      response.status.should be(200)
    end
  end
end
