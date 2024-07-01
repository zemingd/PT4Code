a, b = gets.chomp.split.map(&:to_i)

if a < b
  puts a ** a.to_s
elsif b < a
  puts b ** b.to_s
end
