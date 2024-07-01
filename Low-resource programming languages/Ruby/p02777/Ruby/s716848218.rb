s, t = gets.split
a, b = gets.split.map(&:to_i)
u = gets.chomp
arr = Hash.new
arr[s] = a
arr[t] = b
arr[u] -= 1
puts "#{arr[s]} #{arr[t]}"