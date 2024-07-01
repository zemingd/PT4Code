arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split('')
n = gets.to_i
s = gets.chomp.split('')
map = {}
arr.each_with_index do |a, i|
  map[a] = arr[(i + n) % arr.count]
end
r = ''
s.each do |a|
  r += map[a]
end
puts r