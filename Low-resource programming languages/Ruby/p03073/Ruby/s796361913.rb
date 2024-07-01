S = gets.chomp

c1 = 0
c2 = 0

S.each_char.with_index do |ch, i|
  if i.even?
    c1 += 1 if ch == '1'
    c2 += 1 if ch == '0'
  else
    c1 += 1 if ch == '0'
    c2 += 1 if ch == '1'
  end
end

puts [c1, c2].min
