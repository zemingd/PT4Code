X, A, B = gets.chop.split.map(&:to_i)

if A - B >= 0
  puts 'delicious'
elsif B - A > 0 && (X + A) - B >= 0
  puts 'safe'
else
  puts 'dangerous'
end