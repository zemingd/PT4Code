s, t = gets.chomp.split
m, n = gets.split.map(&:to_i)
del = gets.chomp
num = Hash.new(0)
num[s] = m
num[t] = n
num[del] -= 1
puts "#{num[s]} #{num[t]}"