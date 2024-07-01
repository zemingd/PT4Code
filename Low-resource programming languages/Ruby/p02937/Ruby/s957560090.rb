s = gets.chomp
t = gets.chomp

counter = -1
i = s.length
t.each_char do |char|
  i = s.index(char, i)
  if i.nil?
    counter += 1
    i = s.index(char)
    break if i.nil?
  end
end

if i.nil?
  puts(-1)
else
  puts(s.length * counter + i + 1)
end
