n = gets.to_i
a = gets.split(' ').map(&:to_i)[0, n]
out = a.inject {|result, item| result * item }
puts out > 10**18 ? -1 : out