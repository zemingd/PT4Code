n, l = gets.chomp.split(" ").map(&:to_i)
ss = []
n.times do
  ss << gets.chomp
end
puts ss.sort.join("")
