n = gets.to_i
a = gets.split.map(:to_i)
 
if Enumerable.zip(a.rotate(-1), a, a.rotate(1)).all? {|prv, crr, nxt| prv ^ nxt == crr}
  puts 'Yes'
else
  puts 'No'
end