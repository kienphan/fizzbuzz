require 'rails_helper'

RSpec.describe FizzbuzzController, :type => :controller do

  describe "GET index" do
    before do
      @controller = FizzbuzzController.new
      @fizzbuzz = @controller.index
    end
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "check fizzbuzz array not nil?" do
      expect(@fizzbuzz).not_to eq nil
    end
  end

  describe "GET extends" do
    before do
      @controller = FizzbuzzController.new
      @fizzbuzz = @controller.extends
    end
    it "returns http success" do
      get :extends
      expect(response).to have_http_status(:success)
    end
    it "check fizzbuzz array not nil?" do
      expect(@fizzbuzz).not_to eq nil
    end
  end

end
