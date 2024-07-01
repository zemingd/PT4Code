S = gets.chomp
a = z = -1
S.chars.each_with_index do |c, i|
  if c == 'A' && a == -1
    a = i
  elsif c == 'Z' && z < i
    z = i
  end
end

puts (z - a + 1)