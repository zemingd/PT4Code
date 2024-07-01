A, B = gets.chomp.split(" ").map(&:to_i)
num = gets.chomp.split("-")
if num[0]&.size == A && num[1]&.size == B && num&.size == 2
  puts "Yes"
else
  puts "No"
end
