#
#
# Author      : Adrian Statescu <mergesortv@gmail.com>
# Description : Convert a number from decimal to binary and vice-versa.
# License     : MIT
#

def toBin n
	15.downto(0) {|i| print n>>i & 1}
	print "\n"
end

def pow(a, b)
    p = 1
    1.upto(b) { |i| p *= a }
    p
end	

def toDec n
	dec, base = 0, 0
	while n > 0
		dec = dec + n % 10 * pow(2, base)
		n, base = n / 10 , base + 1     	
	end	
	dec
end	

def toBinRec n
    if n / 2 > 0
    	toBinRec n / 2
    end	
    print n % 2
end	

puts "From Decimal To Binar -> "
  toBin 8  

puts "From Binary to Decimal -> "

p toDec 1000

p toBinRec 31


