H = gets.to_i

count = 0
hp = H
while 1 < hp
  hp = hp / 2
  count += 1
end
total = 0
1.upto(count) do |n|
  ans = (2**n)
  total += ans
end
total += 1
puts total
