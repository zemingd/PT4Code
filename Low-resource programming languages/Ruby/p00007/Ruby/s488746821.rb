money = 100000
n = gets.chomp.to_i

while n > 0
   money = (money * 1.05).to_i
   if money % 1000 > 0
      money = money - (money % 1000) + 1000
   end
   n = n - 1
end

puts money
