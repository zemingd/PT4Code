a = gets.chomp
b= a.split("").map(&:to_i)
c = b.length
ans = 0
for num in 0..c-1 do
  ans += b[num]
end
if a.to_i % ans == 0
  puts "Yes"
else
  puts "No"
end