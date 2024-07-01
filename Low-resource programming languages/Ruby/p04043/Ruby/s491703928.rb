def hoge(nums)
  return "NO" if nums.index(7).nil?

  @count = 0
  nums.each{|n| @count += 1 if n == 5 }

  @count == 2 ? "YES" : "NO"
end

nums = gets.split.map(&:to_i)
hoge(nums)