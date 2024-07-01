x = gets.to_i
num = gets.chomp.split.map(&:to_i)
cal = 0

num.each do |i|
  cal += 1 if i == cal + 1
end

if cal == 0
  puts "-1"
else
  puts num.size - cal
end

