@n = 3

@stack = [0]*(@n)

def valid(level)

    for i in 1..level-1

          if @stack[i] == @stack[level]

             return 0

          end           
    end 

    return 1
end

def display

    for i in 1..@n
            
        print @stack[i].to_s + " "

    end 

    print "\n"
end

def bk(level)
       
    for i in 1..@n

        @stack[level] = i  

        if valid(level) == 1

           if level == @n

              display

           else

              bk(level+1)

           end

        end

    end    

end

bk(1)
