n = gets.to_i
a = gets.split.map(&:to_i)
 
if a.zip(a.rotate(-1), a.rotate(1)).all? {|crr, prv, nxt| prv ^ nxt == crr}
  puts 'Yes'
else
  puts 'No'
end