n,l = gets.split.map(&:to_i)

s = []
n.times do
  s.push(gets.chomp.chars.sort.join)
end

puts s.sort.join