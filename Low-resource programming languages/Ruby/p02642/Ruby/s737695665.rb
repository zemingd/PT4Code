n = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)
ans = Array.new
n.times do |i|
  n.times do |j|
    if i == j
    elsif nums[i] % nums[j] == 0
      break
    elsif 
      j == n - 1
      ans.push(nums[i])
    end
  end
end
puts ans.length