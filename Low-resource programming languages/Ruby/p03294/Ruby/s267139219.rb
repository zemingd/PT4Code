def ascan; gets.split.map(&:to_i); end

gets; aa = ascan

x = aa.reduce(:lcm)
x -= 1

p aa.map{|e|x%e}.reduce(:+)