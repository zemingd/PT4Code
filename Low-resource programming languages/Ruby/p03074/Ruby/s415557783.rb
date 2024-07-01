##templete
n, k = gets.chomp.split(" ").map { |e|  e.to_i }
s = gets.chomp

nums = []
num = "1"
count = 0

for i in 0..n-1 do
  if s[i] == num
    count += 1
  else
    nums.push(count)
    num = ((num.to_i + 1) % 2).to_s  #文字の切り替え
    count = 1
  end
end

nums.push(count)

if nums.length % 2 == 0
  nums.push(0)
end

add = 2 * k + 1

left = 0
right = 0
tmp = 0 # [reft, right)のsum
ans = 0

0.step(nums.length-1, 2) do |i|

  nextleft = i
  nextright = [i + add, nums.length].min

  # 左端の移動
  while nextleft > left
    tmp -= nums[left]
    left += 1
  end

  # 右端の移動
  while nextright > right
    tmp += nums[right]
    right += 1
  end
  ans = ans > tmp ? ans : tmp
end

puts ans
