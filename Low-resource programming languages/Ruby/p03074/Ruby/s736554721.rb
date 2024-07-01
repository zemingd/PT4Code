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



# まず累積和を作成する
sums = [0]

for i in 0..nums.length-1 do
  sums[i+1] = sums[i] + nums[i]
end

ans = 0
add = 2 * k + 1

0.step(nums.length-1, 2) do |i|

  left = i
  right = [i + add, nums.length].min
  # [left, right)の区間のsumを計算
  tmp = sums[right] - sums[left]
  ans = ans > tmp ? ans : tmp
end




puts ans
