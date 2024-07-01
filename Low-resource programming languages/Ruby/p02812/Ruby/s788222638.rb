gets
s = gets
count = 0
(0..s.length-3).each do |i|
  count += 1 if s[i..i+2] == 'ABC'
end
puts count