class FizzbuzzController < ApplicationController

  def index
  	resolve_number(1);
  end

  def extends
  	resolve_number(2);
  end

  def resolve_number (choose_action)
  	@fizzbuzz = Array.new(1000);
  	if choose_action == 1
  	  1.upto(1000) do |i|
  	    @fizzbuzz[i] = ( i%3 == 0 ? "fizz" : "" ) + ( i%5 == 0 ? "buzz" : "" ) + ( i%3 != 0 && i%5 != 0 ? i.to_s : "" );
  	  end
  	 			
  	else
  	  1.upto(1000) do |i|
  	 	@fizzbuzz[i] = ( i%3 == 0 || (i.to_s.include? "3") ? "<img src = \"/assets/scream_boy.png\" height = \"42\" width = \"42\"/>" : "" ) + ( i%5 == 0 ? "<img src = \"/assets/kute_dog.png\" height = \"42\" width = \"42\"/>" : "" ) + ( i%3 != 0 && i%5 != 0 && (!i.to_s.include? "3") ? i.to_s : "" );		
  	  end
  	end 		
  	return @fizzbuzz
  end
end