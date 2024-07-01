gets
num = gets.split.map(&:to_i).reduce{|result, item| result * item}
puts (num <= 10**18) ? num : -1
