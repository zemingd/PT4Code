_ = gets.to_i 
a = gets.split.map(&:to_i)
count = 0
a = a.select { |num| num.even? }

a.each do |n|
  count += 1 unless n % 3 == 0 || n % 5 == 0
end

if count > 0
  puts "DENIED"
else
  puts "APPROVED"
end