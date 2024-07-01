line = gets.split(' ').map(&:to_i)
n = line[0]
m = line[1]
a = gets.split(' ').map(&:to_i)
m.times do |i|
  bc = gets.split(' ').map(&:to_i)
  b = bc[0]
  c = bc[1]
  b.times do |t|
    a << c
  end
end
#puts a
#puts "区切り"
a.sort!
a.reverse!
#puts a
sum = 0
n.times do |r|
  sum += a[r]
end

puts sum