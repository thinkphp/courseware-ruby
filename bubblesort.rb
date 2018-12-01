class Algorithm

      def initialize( arr )

          @arr = arr

          @len = arr.length - 1

      end

      def runBubble()

          size = @len 

          loop do

               swapped = 0

               0.upto(size-1) do |i|

                 if @arr[i] > @arr[i+1] 

                    holder = @arr[i]

                    @arr[i] = @arr[i+1]

                    @arr[i+1] = holder

                    swapped = 1

                 end

               end  
 
              if swapped == 1

                 size -= 1   

              else
                 break 
              end
          end
      end

      def to_str

          'to_str'
      end  

      def to_s

         o = ''

         0.upto(@len) do |i|

           o = o + @arr[i].to_s + ' '

         end 

         o

      end
end
L = [-1,-2,-3,9,8,7,6,5,4,3,2,1,0]
print "Before -> "
print L
o = Algorithm.new(L)
o.runBubble()
print "\n After -> "
puts o
