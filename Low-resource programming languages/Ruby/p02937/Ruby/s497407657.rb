s = gets.chomp
t = gets.chomp

c = -1
i = s.size
t.each_char do |char|
  i = s.index(char, i + 1)
  if i.nil?
    c += 1
    i = s.index(char)
    break if i.nil?
  end
end

if i.nil?
  p -1
else
  p s.size * c + i + 1
end
