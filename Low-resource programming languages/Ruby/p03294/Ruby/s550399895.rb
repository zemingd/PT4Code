n = gets.to_i
a = gets.split.map{|s|s.to_i}

lcm = 1
a.each do |ai|
  lcm = lcm.lcm(ai)
end

m = lcm - 1

ans = a.inject(0) do |s, ai|
  s += m.modulo(ai)
end

puts ans