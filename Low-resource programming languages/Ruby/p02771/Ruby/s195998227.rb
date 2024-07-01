A,B,C = gets.chomp.split.map(&:to_i)

if (A==B&&B==C) or (A!=B&&B!=C&&A!=C)
    puts "No"
else
    puts "Yes"
end