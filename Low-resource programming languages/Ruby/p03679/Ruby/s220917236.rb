X, A, B = gets.split.map(&:to_i)
if A - B >= 0
    puts 'delicious'
elsif A - B >= -X
    puts 'safe'
else
    puts 'dangerous'
end