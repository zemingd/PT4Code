n = gets.chomp.to_i

t = []

n.times do
  t << gets.chomp.to_i
end

lcm = t.inject { |a, b|
  a.lcm(b)
}

puts lcm
