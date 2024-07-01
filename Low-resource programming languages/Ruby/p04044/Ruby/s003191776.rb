input = gets.split(" ").map(&:to_i)
l = input.shift
n = input.shift

ary = []

n.times do
  s = gets.chomp
  ary.push(s)
end

puts ary.sort.join
