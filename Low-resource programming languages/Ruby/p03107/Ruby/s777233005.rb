S = gets.chomp

s = S.dup
while (s.gsub!(/(01|10)/, ''))
end

puts S.size - s.size