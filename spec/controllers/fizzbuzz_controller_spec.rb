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
      # is multiples of 3 and not multiples of 5
      expect(@fizzbuzz[6 - 1]).to eq 'fizz'
      expect(@fizzbuzz[24 - 1]).to eq 'fizz'

      # is multiples of 3 and 5
      expect(@fizzbuzz[90 - 1]).not_to eq 'fizz'
      expect(@fizzbuzz[195 - 1]).not_to eq 'fizz'
    end

    it "check if element is Buzz" do
      # is multiples of 5 and not multiples of 3
      expect(@fizzbuzz[5 - 1]).to eq 'buzz'
      expect(@fizzbuzz[115 - 1]).to eq 'buzz'

      # is multiples of 3 and 5 
      expect(@fizzbuzz[45 - 1]).not_to eq 'buzz'
      expect(@fizzbuzz[150 - 1]).not_to eq 'buzz'
    end

    it "check if element is FizzBuzz" do
      # is multiples of 3 and 5 and not include 3
      expect(@fizzbuzz[15 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[60 - 1]).to eq 'fizzbuzz'

      # check fizzbuzz number is not fizz or buzz
      expect(@fizzbuzz[150 - 1]).not_to eq 'fizz'
      expect(@fizzbuzz[195 - 1]).not_to eq 'buzz'
    end

    it "check if element is number" do
      # normal case if number is not multiples of 3 or 5
      expect(@fizzbuzz[1 - 1]).to eq '1'
      expect(@fizzbuzz[7 - 1]).to eq '7'
      expect(@fizzbuzz[49 - 1]).to eq '49'

      # check if fizzbuzz or fizz or buzz case is not number
      expect(@fizzbuzz[3 - 1]).not_to eq '3'
      expect(@fizzbuzz[65 - 1]).not_to eq '65'
      expect(@fizzbuzz[60 - 1]).not_to eq '60'
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
      # is multiples of 3 and not multiples of 5 and not includes 3
      expect(@fizzbuzz[6 - 1]).to eq 'fizz'
      expect(@fizzbuzz[24 - 1]).to eq 'fizz'

      # is multiples of 3 and 5
      expect(@fizzbuzz[90 - 1]).not_to eq 'fizz'
      expect(@fizzbuzz[195 - 1]).not_to eq 'fizz'

      # is not multiples of 3 and 5 but includes 3
      expect(@fizzbuzz[37 - 1]).to eq 'fizz'
      expect(@fizzbuzz[133 - 1]).to eq 'fizz'
    end

    it "check if element is Buzz" do
      # is multiples of 5 and not multiples of 3
      expect(@fizzbuzz[5 - 1]).to eq 'buzz'
      expect(@fizzbuzz[115 - 1]).to eq 'buzz'

      # is multiples of 3 and 5 
      expect(@fizzbuzz[45 - 1]).not_to eq 'buzz'
      expect(@fizzbuzz[150 - 1]).not_to eq 'buzz'

      # is multiples of 5 and includes 3
      expect(@fizzbuzz[35 - 1]).not_to eq 'buzz'
      expect(@fizzbuzz[325 - 1]).not_to eq 'buzz'

    end

    it "check if element is FizzBuzz" do
      # is multiples of 3 and 5 and not include 3
      expect(@fizzbuzz[15 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[60 - 1]).to eq 'fizzbuzz'

      # check fizzbuzz number is not fizz or buzz
      expect(@fizzbuzz[150 - 1]).not_to eq 'fizz'
      expect(@fizzbuzz[195 - 1]).not_to eq 'buzz'

      # is multiples of 3 and 5 and include 3
      expect(@fizzbuzz[135 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[300 - 1]).to eq 'fizzbuzz'

      # is multiples of 5 and includes 3
      expect(@fizzbuzz[35 - 1]).to eq 'fizzbuzz'
      expect(@fizzbuzz[325 - 1]).to eq 'fizzbuzz'
    end

    it "check if element is number" do
      # normal case if number is not multiples of 3 or 5
      expect(@fizzbuzz[1 - 1]).to eq '1'
      expect(@fizzbuzz[7 - 1]).to eq '7'
      expect(@fizzbuzz[49 - 1]).to eq '49'

      # check if fizzbuzz or fizz or buzz case is not number
      expect(@fizzbuzz[3 - 1]).not_to eq '3'
      expect(@fizzbuzz[65 - 1]).not_to eq '65'
      expect(@fizzbuzz[60 - 1]).not_to eq '60'

      # includes 3 case
      expect(@fizzbuzz[39 - 1]).not_to eq '39'
      expect(@fizzbuzz[139 - 1]).not_to eq '139'
    end 

  end

end
