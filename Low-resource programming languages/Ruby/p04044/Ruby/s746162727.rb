n, l = gets.split
num = n.to_i
len = l.to_i

nums_array = []
num.times {|i|
  alpha_str = gets.chomp
  nums_array.push(alpha_str)
}

nums_array.sort!
puts nums_array.join