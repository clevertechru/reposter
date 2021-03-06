require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PlatformCategoriesController do

  # This should return the minimal set of attributes required to create a valid
  # PlatformCategory. As you add validations to PlatformCategory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlatformCategoriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all platform_categories as @platform_categories" do
      platform_category = PlatformCategory.create! valid_attributes
      get :index, {}, valid_session
      assigns(:platform_categories).should eq([platform_category])
    end
  end

  describe "GET show" do
    it "assigns the requested platform_category as @platform_category" do
      platform_category = PlatformCategory.create! valid_attributes
      get :show, {:id => platform_category.to_param}, valid_session
      assigns(:platform_category).should eq(platform_category)
    end
  end

  describe "GET new" do
    it "assigns a new platform_category as @platform_category" do
      get :new, {}, valid_session
      assigns(:platform_category).should be_a_new(PlatformCategory)
    end
  end

  describe "GET edit" do
    it "assigns the requested platform_category as @platform_category" do
      platform_category = PlatformCategory.create! valid_attributes
      get :edit, {:id => platform_category.to_param}, valid_session
      assigns(:platform_category).should eq(platform_category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PlatformCategory" do
        expect {
          post :create, {:platform_category => valid_attributes}, valid_session
        }.to change(PlatformCategory, :count).by(1)
      end

      it "assigns a newly created platform_category as @platform_category" do
        post :create, {:platform_category => valid_attributes}, valid_session
        assigns(:platform_category).should be_a(PlatformCategory)
        assigns(:platform_category).should be_persisted
      end

      it "redirects to the created platform_category" do
        post :create, {:platform_category => valid_attributes}, valid_session
        response.should redirect_to(PlatformCategory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved platform_category as @platform_category" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlatformCategory.any_instance.stub(:save).and_return(false)
        post :create, {:platform_category => { "title" => "invalid value" }}, valid_session
        assigns(:platform_category).should be_a_new(PlatformCategory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlatformCategory.any_instance.stub(:save).and_return(false)
        post :create, {:platform_category => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested platform_category" do
        platform_category = PlatformCategory.create! valid_attributes
        # Assuming there are no other platform_categories in the database, this
        # specifies that the PlatformCategory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PlatformCategory.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => platform_category.to_param, :platform_category => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested platform_category as @platform_category" do
        platform_category = PlatformCategory.create! valid_attributes
        put :update, {:id => platform_category.to_param, :platform_category => valid_attributes}, valid_session
        assigns(:platform_category).should eq(platform_category)
      end

      it "redirects to the platform_category" do
        platform_category = PlatformCategory.create! valid_attributes
        put :update, {:id => platform_category.to_param, :platform_category => valid_attributes}, valid_session
        response.should redirect_to(platform_category)
      end
    end

    describe "with invalid params" do
      it "assigns the platform_category as @platform_category" do
        platform_category = PlatformCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlatformCategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => platform_category.to_param, :platform_category => { "title" => "invalid value" }}, valid_session
        assigns(:platform_category).should eq(platform_category)
      end

      it "re-renders the 'edit' template" do
        platform_category = PlatformCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlatformCategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => platform_category.to_param, :platform_category => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested platform_category" do
      platform_category = PlatformCategory.create! valid_attributes
      expect {
        delete :destroy, {:id => platform_category.to_param}, valid_session
      }.to change(PlatformCategory, :count).by(-1)
    end

    it "redirects to the platform_categories list" do
      platform_category = PlatformCategory.create! valid_attributes
      delete :destroy, {:id => platform_category.to_param}, valid_session
      response.should redirect_to(platform_categories_url)
    end
  end

end
