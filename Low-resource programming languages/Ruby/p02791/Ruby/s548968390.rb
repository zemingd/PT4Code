n = gets.to_i
nums = gets.split.map(&:to_i)
min = 300_000
ans = []
nums.each_with_index do |num, i|
  if num <= min
    min = num
    ans << i
  end
end
puts ans.size
