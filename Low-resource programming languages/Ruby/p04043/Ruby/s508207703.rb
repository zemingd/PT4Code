n, l = gets.split.map(&:to_i)
n = nil
ary = []
l.times { ary << gets.chomp }

puts ary.sort.join
