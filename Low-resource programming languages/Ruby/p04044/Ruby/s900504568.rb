n, l = gets.split.map(&:to_i)
str = []
n.times do
  str.push(gets.chomp)
end
str.sort.each do |s| 
  print s
end
puts

