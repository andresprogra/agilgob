require 'rails_helper'

RSpec.describe ShelvesController, type: :controller do
  let(:valid_attributes) {
    FactoryBot.build(:shelf).attributes.symbolize_keys
  }

  let(:invalid_attributes) {
    FactoryBot.build(:shelf_invalid).attributes.symbolize_keys
  }
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Shelf.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      shelf = Shelf.create! valid_attributes
      get :show, params: {id: shelf.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      shelf = Shelf.create! valid_attributes
      get :edit, params: {id: shelf.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Shelf" do
        expect {
          post :create, params: {shelf: valid_attributes}, session: valid_session
        }.to change(Shelf, :count).by(1)
      end

      it "redirects to the created shelf" do
        post :create, params: {shelf: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Shelf.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {shelf: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {pasillo: "Zulu"}
      }

      it "updates the requested shelf" do
        shelf = Shelf.create! valid_attributes
        put :update, params: {id: shelf.to_param, shelf: new_attributes}, session: valid_session
        shelf.reload
        expect(response).to redirect_to(shelf)
      end

      it "redirects to the shelf" do
        shelf = Shelf.create! valid_attributes
        put :update, params: {id: shelf.to_param, shelf: valid_attributes}, session: valid_session
        expect(response).to redirect_to(shelf)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        shelf = Shelf.create! valid_attributes
        put :update, params: {id: shelf.to_param, shelf: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested shelf" do
      shelf = Shelf.create! valid_attributes
      expect {
        delete :destroy, params: {id: shelf.to_param}, session: valid_session
      }.to change(Shelf, :count).by(-1)
    end

    it "redirects to the shelves list" do
      shelf = Shelf.create! valid_attributes
      delete :destroy, params: {id: shelf.to_param}, session: valid_session
      expect(response).to redirect_to(shelves_url)
    end
  end

end
