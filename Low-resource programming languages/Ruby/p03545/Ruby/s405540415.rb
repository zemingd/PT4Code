nums = gets.chomp.split("").map(&:to_i)
(3 ** 2).times do |i|
  op1 = i[0] == 1 ? "+" : "-"
  op2 = i[1] == 1 ? "+" : "-"
  op3 = i[2] == 1 ? "+" : "-"
  ops = [op1, op2, op3]
  sum = nums.first
  nums[1..-1].each_with_index do |num, index|
    sum += ops[index] == "+" ? num : -num
  end
  if sum == 7
    puts "#{nums[0]}#{op1}#{nums[1]}#{op2}#{nums[2]}#{op3}#{nums[3]}=7"
    exit
  end
end
