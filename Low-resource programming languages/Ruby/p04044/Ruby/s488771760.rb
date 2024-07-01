n, l = gets.split(" ").map(&:to_i)

ary = Array.new
n.times do
  ary << gets.chomp
end
puts ary.sort!.join