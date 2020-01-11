class Euclid
	  attr_reader :a
	  attr_reader :b

	  def initialize(a,b)
	  	  @a = a
	  	  @b = b
	  end

	  def solve1

          #execute white test is false
          until @a == @b do

          	    if(@a > @b)

          	    	@a = @a - @b
          	    else 
          	    	@b = @b - @a
          	    end 
          end	
          
          @a
	  end	
	  	

	  def solve2

          while @b != 0 

          	  @a, @b = @b, @a % @b

          end	
          @a
	  end	

	  def solve3

	  	  return self.euclidRec(@a, @b) 
	  end	

	  def euclidRec(a, b)

	  	   if(b == 0) 

	  	   	  return a

	  	   else   
                return euclidRec(b, a % b)
	  	   end	
	  end	 	  
end	

p Euclid.new(10,4).solve3