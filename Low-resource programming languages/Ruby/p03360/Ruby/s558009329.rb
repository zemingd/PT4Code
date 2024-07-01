num = gets.chomp.split(" ").map(&:to_i)

k = gets.chomp.to_i

k.times do
    num.sort!
    num[-1] = num[-1] * 2
end

puts num.inject(:+)
