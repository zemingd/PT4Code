a,b = gets.chomp.split(" ").map(&:to_i)

if (a * b) % 2 == 1 then
  puts 'Odd'
else
  puts 'Even'
end

