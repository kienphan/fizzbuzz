require 'rails_helper'

RSpec.describe DirectorySearchController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "check directory tree is created?" do
  	before do
  	  @controller = DirectorySearchController.new
  	  @tree = @controller.index
  	end

  	it "return tree directory" do
  	  expect(@tree).not_to eq nil
  	end
  end

end
