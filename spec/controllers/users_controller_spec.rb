require 'spec_helper'

describe UsersController do
  describe "GET new" do
    it "sets @user" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST create" do
    context "with valid input" do
      it "creates a new user" do
        post :create, user: {email: "andrew@example.com", password: "password", full_name: "Andrew Buckingham" }
        expect(User.count).to eq(1)
      end

      it "redirects to the sign in page" do
        post :create, user: {email: "andrew@example.com", password: "password", full_name: "Andrew Buckingham" }
        expect(response).to redirect_to sign_in_path
      end
    end

    context "with invalid input" do
      it "does not create the user" do
        post :create, user: { password: "password", full_name: "Andrew Buckingham" }
        expect(User.count).to eq(0)
      end

      it "renders the :new template" do
        post :create, user: { password: "password", full_name: "Andrew Buckingham" }
        expect(response).to render_template :new
      end

      it "sets @user" do
        post :create, user: { password: "password", full_name: "Andrew Buckingham" }
        expect(assigns(:user)).to be_instance_of(User)
      end
    end
  end
end