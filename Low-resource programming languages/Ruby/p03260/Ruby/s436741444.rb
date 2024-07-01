a, b = gets.chomp!.split(" ").map(&:to_i)

if (1..3).any? {|c| a * b * c % 2 == 1 }
    puts "Yes"
else
    puts "No"
end

