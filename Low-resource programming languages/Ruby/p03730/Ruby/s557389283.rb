a,b,c = gets.split.map(&:to_i)
puts (1 .. b).map{|i| i * a }.any?{|v| v % b == c } ? 'YES' : 'NO'

