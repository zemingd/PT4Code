n = gets.chomp.to_i
s = []
n.times do
    s << gets.chomp.to_i
end
sum = s.inject(:+)
s.sort!.reverse!
while sum % 10 == 0
    sum -= s.pop
    break if sum == 0
end
puts sum