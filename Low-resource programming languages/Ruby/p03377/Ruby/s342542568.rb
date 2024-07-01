A, B, X = gets.split.map(&:to_i)
if A > X || (A + B) < X
    puts 'NO'
else
    puts 'YES'
end