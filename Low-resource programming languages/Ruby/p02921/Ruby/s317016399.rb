s = gets.chomp
t = gets.chomp
ans = s.chars.zip(t.chars).count do |ss, tt|
  ss == tt
end

puts ans