N = gets.to_i

list = []
N.times do |i|
  s, p = gets.split(" ")
  p = p.to_i
  list << [s, -p, i+1]
end

list.sort!
list.each do |(a, b, i)|
  puts i
end
