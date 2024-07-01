X, A, B = gets.chomp.split(" ").map{ |n| n.to_i }
if X >= B - A && B - A <= 0 then
  print 'delicious'
elsif X >= B - A then
  print 'safe'
else
  print 'dangerous'
end
