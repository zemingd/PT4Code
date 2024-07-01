n = gets.strip.to_i
a = gets.strip.split.map { |v| v.to_i }

current_number = 0
a.each do |v|
  current_number += 1 if current_number + 1 == v
end

if current_number == 0
  puts -1
  exit
end
puts n - current_number
