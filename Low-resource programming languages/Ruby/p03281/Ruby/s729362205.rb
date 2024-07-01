n = gets.chomp.to_i
count = 0
(1..n).each do |num|
  if n % num == 0
    count += 1
  end
end
if count == 8
  puts "Yes"
else
  puts "No"
end
