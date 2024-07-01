n,l = gets.split(" ").map(&:to_i)
apples = (0...n).map{ |a| a + l }
taste = apples.inject(:+)
bite = if apples.include?(0)
        0
       elsif taste > 0
        apples[0]
       else
        apples[n-1]
       end
print taste - bite