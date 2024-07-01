nu = gets.chomp.split(" ").map(&:to_i)
ans = 0

num = nu.sort
ans = num[0] + num[1] + num[2]*10



print ans
