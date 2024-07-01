n = gets.to_i

judge = Hash.new(false)
n.times {judge[gets] ^= true}

ans = 0
judge.each_value {|value| ans += 1 if value}

puts ans