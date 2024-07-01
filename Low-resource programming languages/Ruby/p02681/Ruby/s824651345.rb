a, b = 2.times.map { gets.strip.to_s }

if b.include?(a) && a.size >= 1 && a.size <= 10 && b.size == a.size + 1
  puts "Yes"
else
  puts "No"
end
