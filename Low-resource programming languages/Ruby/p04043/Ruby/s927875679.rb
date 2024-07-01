_n, l = gets.split.map(&:to_i)
ary = []
l.times do
  s = gets.chomp
  ary << s
end
puts ary.sort.join('')