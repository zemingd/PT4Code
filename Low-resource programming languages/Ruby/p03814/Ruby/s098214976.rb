s = gets.chomp.split('')
a = s.length
z = 0
s.each do |i|
  if s[i] = "A"
    a = i if a > i
  end
  if s[i] ="Z"
    z = i if z <i
  end
end
puts z-a+1
