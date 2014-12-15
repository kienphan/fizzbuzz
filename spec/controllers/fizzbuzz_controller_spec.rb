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
    it "check fizzbuzz array is not nil?" do
      expect(@fizzbuzz).not_to eq nil
    end
    it "check if element is Fizz" do
      expect(@fizzbuzz[3 - 1]).to eq 'fizz'
      expect(@fizzbuzz[24 - 1]).to eq 'fizz'
      expect(@fizzbuzz[36 - 1]).to eq 'fizz'
    end
    it "check if element is Buzz" do
      expect(@fizzbuzz[5 - 1]).to eq 'buzz'
      expect(@fizzbuzz[35 - 1]).to eq 'buzz'
      expect(@fizzbuzz[70 - 1]).to eq 'buzz'
    end
    it "check if element is FizzBuzz" do
      expect(@fizzbuzz[15 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[60 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[150 - 1]).to eq 'fizzbuzz'
    end
    it "check if element is number" do
      expect(@fizzbuzz[1 - 1]).to eq '1'
      expect(@fizzbuzz[7 - 1]).to eq '7'
      expect(@fizzbuzz[49 - 1]).to eq '49'
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
    it "check fizzbuzz array is not nil?" do
      expect(@fizzbuzz).not_to eq nil
    end
    it "check if element is Fizz" do
      expect(@fizzbuzz[3 - 1]).to eq 'fizz'
      expect(@fizzbuzz[24 - 1]).to eq 'fizz'
      expect(@fizzbuzz[37 - 1]).to eq 'fizz'
      expect(@fizzbuzz[133 - 1]).to eq 'fizz'
    end
    it "check if element is Buzz" do
      expect(@fizzbuzz[5 - 1]).to eq 'buzz'
      expect(@fizzbuzz[35 - 1]).to eq 'buzz'
      expect(@fizzbuzz[70 - 1]).to eq 'buzz'
    end
    it "check if element is FizzBuzz" do
      expect(@fizzbuzz[15 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[60 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[150 - 1]).to eq 'fizzbuzz'
    end
    it "check if element is number" do
      expect(@fizzbuzz[1 - 1]).to eq '1'
      expect(@fizzbuzz[7 - 1]).to eq '7'
      expect(@fizzbuzz[49 - 1]).to eq '49'
    end 
  end

end
