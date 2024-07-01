n = gets.to_i
s = gets.chomp
s.size.times do |i|
    s[i] = ((s[i].ord - 'A'.ord + n)%26 + 'A'.ord).chr
end

puts s