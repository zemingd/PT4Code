a = gets.chomp.to_i
b = a
cnt = 0
while b != 0 do
  cnt += b % 10
  b = b /10
end
if a % cnt == 0
  puts "Yes"
else
  puts "No"
end