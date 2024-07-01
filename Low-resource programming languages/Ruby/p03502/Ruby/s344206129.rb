s = gets.chars

sum = s.chars.to_i.map(&:to_i).inject(:+)

if s.to_i % sum == 0
    puts "Yes"
else
    puts "No"
end
