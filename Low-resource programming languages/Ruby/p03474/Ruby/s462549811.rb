lengths = gets.chomp.split(" ").map(&:to_i)
nums = gets.split("-").map(&:length)
res = nums == lengths ? 'Yes' : 'No'
print(res)
