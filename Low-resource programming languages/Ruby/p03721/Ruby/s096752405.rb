n, k = gets.chomp.split(" ").map(&:to_i)
nums = []
n.times { nums << gets.chomp.split(" ").map(&:to_i) }

rk = k
ans = 0
nums.each do |(num, amount)|
  rk -= amount
  if rk <= 0
    ans = num
    break
  end
end

puts ans
