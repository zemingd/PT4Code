n = gets.to_i

judge = Hash.new(false)
n.times do
    a = gets.to_i
    judge[a] ^= true
end

ans = 0
judge.each_value {|value| ans += 1 if value}

puts ans