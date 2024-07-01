base_nums = gets.chomp.split(//).map(&:to_i)
flag = false
2.times do |first|
  2.times do |second|
    2.times do |third|
      nums = base_nums.dup
      nums[1] = nums[1] * -1 if first.even?
      nums[2] = nums[2] * -1 if second.even?
      nums[3] = nums[3] * -1 if third.even?
      if nums.inject(:+) == 7
        str = ""
        nums.each_with_index do |num, i|
          if i == 0
            str += num.to_s
          else
            if num >= 0
              str += "+"
              str += num.to_s
            else
              str += num.to_s
            end
          end
        end
        str += "=7"
        puts str
        flag = true
      end
      break if flag
    end
    break if flag
  end
  break if flag
end
