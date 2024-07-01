x, y = gets.chomp.split(" ").map(&:to_i)
num = gets.chomp.split(" ").map(&:to_i)

i = 0
num.each do |c|
  i += c
end

if i >= x
  puts "Yes"
else
  puts "No"
end
