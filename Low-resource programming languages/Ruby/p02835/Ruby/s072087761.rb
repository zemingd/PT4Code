a1,a2,a3 = gets.chomp.split(" ").map(&:to_i)

sum = a1+a2+a3

if sum > 21
  puts("bust")
else
  puts("win")
end
