n,m = gets.chomp.split(" ").map(&:to_i)
a = m.times.map{gets.chomp.split(" ").map(&:to_i)}.flatten
for i in 0..n-1
  puts a.count(i+1)
end