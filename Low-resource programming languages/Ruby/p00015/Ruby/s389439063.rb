gets.to_i.times do
  nums = Array.new(2).map{ Array.new(80, 0) }
  2.times do |i|
    ss = gets.chomp.split("")
    size = ss.size
    ss.each_with_index do |s, index|
      nums[i][size-index-1] = s.to_i
    end
  end
  sum = []
  carry = 0
  80.times do |i|
    c = nums[0][i] + nums[1][i] + carry
    carry = c/10
    c %= 10
    sum << c
  end
  if carry != 0
    puts "overflow"
  else
    i = 0
    loop do
      break if sum[i] != 0
      if sum.size == 1
        break
      end
      sum.shift
    end
    puts sum.join
  end
end