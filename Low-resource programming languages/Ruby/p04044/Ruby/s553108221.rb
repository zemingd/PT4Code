n, l = gets.chomp!.split.map(&:to_i)
a = []
n.times do
  a << gets.chomp!
end
puts a.sort.join