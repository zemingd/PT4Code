n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
nums = []
now = 1
cnt = 0
n.times do |i|
  if s[i] == now
    cnt += 1
  else
    nums << cnt
    now = 1 - now
    cnt = 1
  end
end
if cnt != 0
  nums << cnt
end
if nums.size.even?
  nums << 0
end

sums = Array.new(nums.size + 1, 0)
nums.size.times do |i|
  sums[i+1] = sums[i] + nums[i]
end

add = 2 * k + 1

ans = 0

(0..(nums.size)).step(2) do |i|
  left = i
  right = [i + add, nums.size].min
  tmp = sums[right] - sums[left]
  if tmp > ans
    ans = tmp
  end
end
puts ans