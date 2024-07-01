s = gets.chomp.split('')
a = 0
z = 0

s.each_with_index do |t,i|
  if t == "A"
    a = i
    break
  end
end

s.each_with_index do |t,i|
  if t == "Z"
    z = i
  end
end

puts z - a + 1
