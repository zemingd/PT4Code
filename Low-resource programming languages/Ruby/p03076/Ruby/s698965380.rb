    def main()
        array = []
        STDIN.each_line {|line|
            array.push(line.chomp)
        }
        array = array.map {|n| n.to_f }
        value = array.reduce([array[0], (array[0]%10)]) { |i, n|
            if (n%10)>0 
            if i[1]>=(n%10)
                i = [n, (n%10)]
            else
                i = i
            end
        else
            i = i
        end
        }
        index = array.index(value[0])
        sum = 0
        array.each_with_index do |x, i|
          if i == index
            next
          end
          sum += x.ceil(-1)
        end

          print (sum+value[0]).to_i
    end
    main()