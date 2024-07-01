a,b = gets.split.map(&:to_i)
c = []

a.times do
  str = gets.chomp
  c << str
end
puts c.sort.join