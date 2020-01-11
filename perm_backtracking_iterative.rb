class Algorithm
      
      def initialize(n)

          @n = n
          @stack = [0]*(n+1) 
          self.bk  

      end

      def init
          @stack[@level] = 0
      end  

      def succ

          if @stack[@level] < @n  
             @stack[@level] = @stack[@level] + 1
             return 1
          end 
          return 0
      end

      def valid

          for i in 1..@level-1
              if @stack[i] == @stack[@level]
                 return 0
              end               
          end
          return 1
      end

      def sol
          return @level == @n
      end    

      def display

          for i in 1..@n

              print @stack[i].to_s + " "
          end  

          print "\n"
      end   

      def bk

          @level = 1

          init  

          while @level > 0

                hs = 1
                is = 0
   
                while hs == 1 && is == 0 do

                      hs = succ

                      if hs 

                         is = valid

                      end
                end   

                if hs == 1

                   if sol == true
                      
                      display

                   else

                      @level = @level + 1

                      self.init 

                   end   

                else

                   @level = @level - 1 

                end  

          end
      end    
end

n = ARGV[0].to_i

ob = Algorithm.new(n)
