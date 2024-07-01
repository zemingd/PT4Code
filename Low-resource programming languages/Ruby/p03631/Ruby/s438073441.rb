def ascan; gets.split.map(&:to_i);end

s = gets.chomp
if s == s.reverse
    puts "Yes"
else
    puts "No"
end