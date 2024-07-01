n = gets.chomp.to_i
arr = gets.chomp.split(' ').map { |i| i.to_i - 1 }
h = Hash.new(0)
n.times { |i| h[arr[i]] += 1 }
n.times { |i| puts h[i] }