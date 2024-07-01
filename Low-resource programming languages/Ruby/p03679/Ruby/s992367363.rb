X, A, B=gets.split.map(&:to_i)
if B - A <= 0
    puts "delicious"
elsif B - A - X <= 0
    puts "safe"
else
    puts "dangerous"
end