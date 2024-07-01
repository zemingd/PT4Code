n, l = gets.chomp.split(' ').map(&:to_i)

strs = []
n.times do
  strs << gets.chomp
end

puts strs.sort.join