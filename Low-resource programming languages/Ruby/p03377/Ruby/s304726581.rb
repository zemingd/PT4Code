A, B, X = gets.split.map(&:to_i)

if A <= X && X <= (A + B) then
  puts "YES"
else
  puts "NO"
end