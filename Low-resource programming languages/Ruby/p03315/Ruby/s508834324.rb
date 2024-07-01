s = gets.strip

n = 0
4.times do |i|
    n += (s[i] == '+') ? +1 : -1
end

puts n
