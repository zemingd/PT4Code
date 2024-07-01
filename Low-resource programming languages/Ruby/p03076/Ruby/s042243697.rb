array = STDIN.each_line.map(&:chomp).map(&:to_i)

array.sort!{ |a, b| (a % 10 <=> b % 10) }

newArray = array.reject { |item| item % 10 == 0 }                       
array.each{ |item| if (item % 10 == 0) then
                     newArray.push(item)
                     end
            }

sum = 0
newArray.each_with_index { |i, index|
                        if index == 0 then
                          sum += i
                        else
                          # 下一桁を繰り上げたい
                          sum += ((i % 10) != 0) ? (i / 10) * 10 + 10
                                                 : i
                        end }

puts sum