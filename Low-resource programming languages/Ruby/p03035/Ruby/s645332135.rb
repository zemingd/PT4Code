A,B = gets.split.map(&:to_i)
if A >= 13
    puts B
elsif A >= 6 && A <= 12
    puts B/2
else
    puts 0
end