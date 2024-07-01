k = gets.to_i
a, b = gets.strip.split.map(&:to_i)

puts (a..b).all?{|v|v%k==0} ? 'OK' : 'NG'
