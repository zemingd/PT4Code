n = gets.to_i
line = gets.chomp.split("")

if line.slice(0..(n / 2) - 1) == line.slice(n / 2 .. n - 1) && n % 2 == 0
  puts "Yes"
else
  puts "No"
end
