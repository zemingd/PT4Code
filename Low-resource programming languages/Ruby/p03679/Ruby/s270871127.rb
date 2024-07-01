X, A, B = gets.split.map(&:to_i)
if A >= B
  puts 'delicious'
elsif A < B && B < A+X
  puts 'safe'
else
  puts 'dangerous'
end