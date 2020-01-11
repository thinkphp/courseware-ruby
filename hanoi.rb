# Towers of Hanoi
def Hanoi n, a, b, c

	if n == 1

	   print a ,"=>", b

	   print "\n"

	else	

	   Hanoi n - 1, a , c, b

	   Hanoi 1, a, b, c

	   Hanoi n - 1, c, b, a

    end		
   
end

Hanoi 3,'a','b','c'