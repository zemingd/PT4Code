X, A, B = gets.chomp.split(" ").map{ |n| n.to_i }
if X > B - A && B - A < 0 then
  p 'delicious'
elsif X > B - A then
  p 'safe'
else
  p 'dangerous'
end
