k = gets.to_i
a,b = gets.split.map(&:to_i)
puts (a..b).any? {|i| i % k == 0} ? 'OK':'NG'