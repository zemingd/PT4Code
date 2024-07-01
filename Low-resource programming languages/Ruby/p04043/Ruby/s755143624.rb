nums = gets.chomp.split.map(&:to_i)
print nums.sort == [5, 5, 7] ? "YES" : "NO"