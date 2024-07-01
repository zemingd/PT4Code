a, b = gets.chomp.map(&:to_i)
if a * b.odd?
  puts "Odd"
else
  puts "Even"
end

