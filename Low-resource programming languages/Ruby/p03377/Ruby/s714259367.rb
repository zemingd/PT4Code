A, B, X = gets.strip.split.map(&:to_i)

if A <= X
  puts (A + B) >= X ? 'YES' : 'NO'
else
  puts 'NO'
end
