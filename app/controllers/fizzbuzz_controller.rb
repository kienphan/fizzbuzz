class FizzbuzzController < ApplicationController

  def index
    @_fizzbuzz_1 = Array.new
  	1.upto(1000) do |i|
      if i % 3 == 0 && i % 5 != 0
        @_fizzbuzz_1 << "fizz"
      elsif i % 3 != 0 && i % 5 == 0
        @_fizzbuzz_1 << "buzz"
      elsif i % 15 == 0 
        @_fizzbuzz_1 << "fizzbuzz"
      else
        @_fizzbuzz_1 << i.to_s
      end
    end
    return @_fizzbuzz_1
  end

  def extends
    @_fizzbuzz_2 = Array.new
  	1.upto(1000) do |i|
      if i % 3 == 0 && i % 5 != 0 || ( i.to_s.include? "3" )
        @_fizzbuzz_2 << "fizz"
      elsif i % 3 != 0 && i % 5 == 0 && ( !i.to_s.include? "3" )
        @_fizzbuzz_2 << "buzz"
      elsif i % 15 == 0 && ( !i.to_s.include? "3" )
        @_fizzbuzz_2 << "fizzbuzz"
      else
        @_fizzbuzz_2 << i.to_s
      end
    end
    return @_fizzbuzz_2
  end

end