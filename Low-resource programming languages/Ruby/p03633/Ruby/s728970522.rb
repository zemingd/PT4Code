N = gets.to_i

lcm = 1
N.times do |i|
    lcm = lcm.lcm(gets.to_i)
end

puts lcm