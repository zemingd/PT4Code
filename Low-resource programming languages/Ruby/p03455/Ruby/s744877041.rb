a,b = gets.chomp.split(" ").map(&:to_i) 
if a * b % 2 == 0
    puts 'Even'
elsif a * b % 2 == 1
    puts 'Odd'    
end