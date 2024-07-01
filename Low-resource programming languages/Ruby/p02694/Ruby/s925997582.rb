x = gets.chomp.to_i
cnt = 0
n = 100
while n < x
  cnt += 1
  n = (n*1.01).to_i
end
puts cnt