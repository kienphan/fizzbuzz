class FizzbuzzController < ApplicationController

  def index
    @_fizzbuzz_1 = Array.new
    1.upto(1000) do |i|
      @_fizzbuzz_1 <<
        if i % 3 == 0
          i % 5 == 0 ? "fizzbuzz" : "fizz"
        else
          i % 5 == 0 ? "buzz" : "#{i}"
        end
    end
    return @_fizzbuzz_1
  end

  def extends
    @_fizzbuzz_2 = Array.new
    1.upto(1000) do |i|
      if i % 5 == 0
        if i % 3 == 0
          @_fizzbuzz_2 << "fizzbuzz"
        else
          if ( i.to_s.include? "3" )
            @_fizzbuzz_2 << "fizzbuzz"
          else
            @_fizzbuzz_2 << "buzz"
          end
        end
      else
        if i % 3 == 0 || ( i.to_s.include? "3" )
          @_fizzbuzz_2 << "fizz"
        else
          @_fizzbuzz_2 << "#{i}"
        end
      end
    end
    return @_fizzbuzz_2
  end

end
