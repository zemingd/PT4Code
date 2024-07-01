input = STDIN.gets.split(" ").map do |x| x.to_i end
data = STDIN.gets.split(" ").map do |x| x.to_i end
x = input[0]
n = input[1]

#p x
#p n
#p data

if (n == 0) then
  puts(x)
  exit
end

nums = Array.new(100)
for i in 1..100 do 
  nums[i] = i
end

data.each do |p|
  nums[p] = nil
end

#p nums

diff = -1
while (diff > -100) do
#puts("CHECK")
#p x+diff
  if (nums[x + diff] != nil) then
    puts(nums[x+diff])
    exit
  end
#p x+diff*(-1)
  if (nums[x + diff * (-1)] != nil) then
    puts(nums[x+diff * (-1)])
    exit
  end

  diff -= -1
end
