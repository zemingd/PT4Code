n = gets.to_i
a = gets.split.map(&:to_i)
for i in 0...n
  puts a.count(i+1)
end