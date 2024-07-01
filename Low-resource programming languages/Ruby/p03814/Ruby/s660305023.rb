s = gets.chomp
a,z=0,0
s.each_char.with_index do |c, i|
  if c == 'A'
    a = i
    break
  end
end
s.reverse.each_char.with_index do |c, i|
  if c == 'Z'
    z = s.size - i
    break
  end
end
puts z - a
