s = gets.chomp
n = s.to_i

if n % s.split("").map(&:to_i).inject(:+) == 0
    puts "Yes"
else
    puts "No"
end