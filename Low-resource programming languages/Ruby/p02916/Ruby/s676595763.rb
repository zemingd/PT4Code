require 'pp'

n = gets.chomp!
a_n = gets.chomp!.split(" ").map(&:to_i)
b_n = gets.chomp!.split(" ").map(&:to_i)
c_n = gets.chomp!.split(" ").map(&:to_i)

sum = 0
before = -1000
a_n.each do |a|
    sum += b_n[a-1]
    if before + 1 == a
        sum += c_n[before - 1]
    end

    before = a
end

puts sum
