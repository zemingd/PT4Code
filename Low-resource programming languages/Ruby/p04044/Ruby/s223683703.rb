_n, l = gets.split.map(&:to_i)
ary = []
l.times { ary << gets.chomp }

puts ary.sort.join