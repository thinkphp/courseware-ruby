#The factorial is not in the standar library, but you cand extend the Integer Class

class Integer
	  def factorial
	  	  f = 1
	  	  for i in 1..self
	  	  	  f *= i	  	  	  
	  	  end	
	  	  f
	  end		  

	  def factorialRec
	  	  self <= 1 ? 1 : self * (self - 1).factorialRec 
	  end	
end


# Iterative factorial is a better way choice for obvious performance reasons.
p 2000.factorial