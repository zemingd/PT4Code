N, M = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i).sort

nums = []
M.times do
  b, c = gets.split.map(&:to_i)
  nums += Array.new(b, c)
end
nums.sort!.reverse!

result = 0
while cards.size > 0 do
  i = cards.shift
  j = nums.first

  if j && j > i
    result += j
    nums.shift
  else
    result += i
  end
end

puts result
