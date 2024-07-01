X,A,B = gets.split.map(&:to_i)
if A >= B
  puts 'delicious'
elsif A + X >= B
  puts 'safe'
else
  puts 'dangerous'
end