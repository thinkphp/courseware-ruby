class Fibonacci

      @nth = 1

      def initialize(n)

      	  @nth = n

      end	

      def fibIt

          prev, curr = 1, 1

          print prev,' ', curr, ' '

          3.upto(@nth) {

            prev, curr = curr, prev + curr           

            print curr, ' '
          }            

      end	

      def fibRec
 
          return _fibRec(@nth)

      end	

      def _fibRec(n)

          if(n == 1) 

             1

          elsif (n == 2)

          	 1

          else

              return _fibRec(n - 2) + _fibRec(n - 1)
          end	 
               	     
      end	

      def Enumerator(howhow)
 
          ob = Enumerator.new do |y| 

          	 a, b = 1, 1

          	 loop do # or while true

          	 	   y.yield a
          	 	   # or y << a
          	 	   a, b = b, a + b          	 	   
          	 end	

          end	

          p ob.take(howhow)
      end	

end

ob = Fibonacci.new(3)

#ob.fibIt
#p ob.fibRec
ob.Enumerator(100)