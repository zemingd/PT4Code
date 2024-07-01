a,b=gets.chomp.split.map(&:to_i)
arr = Array.new
arr << a+b
arr << a-b
arr << a*b
puts arr.max