n,q = gets.chomp.split.map(&:to_i)
str = gets.chomp
map = []

(n-1).times do |i|
  map.push(str[i] == 'A' && str[i+1] == 'C' && 1 || 0)
end

q.times do |line|
  f,t = gets.chomp.split.map(&:to_i)
  puts map[(f-1)..(t-2)].inject(:+)
end