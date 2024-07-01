s = gets.chomp
count = 0

s.length.times do |i|
  if s[i] == '+'
    count += 1
  else
    count -= 1
  end
end

puts count