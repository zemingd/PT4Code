n,l = gets.split(" ").map(&:to_i)
ary = []

n.times do |i|
  ary.push(str=gets.chomp)
end

ary.sort! do |a, b|
  ret = a.casecmp(b)
  ret == 0 ? a <=> b : ret
end

puts ary.join("")
