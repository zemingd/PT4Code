s = gets.chomp.chars
t = gets.chomp.chars
count = 0
(0..s.size-1).each do |i|
  if s[i] == t[i]
    count = count + 1
  end
end
puts count