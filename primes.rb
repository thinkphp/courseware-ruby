class Primes	  

      attr_writer :n       

      def initialize(k)

          @n = k
      end	

      def display
      	  
          g = Enumerator.new do |g|

                    n = 2
                    p = []

                    loop do

                         if p.all? {|i| n % i != 0}
                            g.yield n
                            p << n 
                         end
                           
                         n += 1
                    end
                    
          end            

          g.take(@n) 
      end	
end	

p Primes.new(1000).display


