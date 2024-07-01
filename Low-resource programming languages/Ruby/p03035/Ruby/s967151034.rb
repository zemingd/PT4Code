A,B =gets.chomp.split(" ").map(&:to_i)
if A >= 13
    puts B
elsif A >=6 && A <= 12
    puts B/2
elsif A <= 5
    puts 0
end