require 'rails_helper'

RSpec.describe FizzbuzzController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET extends" do
    it "returns http success" do
      get :extends
      expect(response).to have_http_status(:success)
    end
  end

  describe "fetch resolve number to choose action" do
    before do
      @controller = FizzbuzzController.new
      @fizzbuzz = @controller.resolve_number(1)
    end
    it "return fizzbuzz array" do  
      expect(@fizzbuzz).not_to eq nil
    end
  end

end
