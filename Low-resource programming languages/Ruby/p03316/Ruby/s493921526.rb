n = gets.to_i
sn = 0

tmp = n
while tmp > 0
  sn += tmp % 10
  tmp /= 10
end
n % sn == 0 ? (puts "Yes"):(puts "No")