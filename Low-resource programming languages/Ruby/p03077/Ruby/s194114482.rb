def ascan; gets.split.map(&:to_i); end

n = gets.to_i
neck = 5.times.map{gets.to_i}.min
p 5+((n-1)/neck)