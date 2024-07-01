nums = gets.chomp.split("").map(&:to_i)

(2**3).times do |i|
  sum = nums[0]
  ans = [nums[0]]
  3.times do |j|
    if i[j] == 0
      sum -= nums[j+1]
      ans << "-" + "#{nums[j+1]}"
    else
      sum += nums[j+1]
      ans << "+" + "#{nums[j+1]}"
    end
  end
  if sum == 7
    puts ans.join + "=7"
    break
  end
end