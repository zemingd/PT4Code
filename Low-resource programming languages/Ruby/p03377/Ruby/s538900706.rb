A, B, X = gets.split.map(&:to_i)

if A <= X && X <= A + B
  puts 'YES'
else
  puts 'NO'
end
