i = gets.chomp.to_i
six_ary = []
six_target = true
nine_ary = []
nine_target = true
i_six = 0
i_nine = 0
ans = 0
while 100000 >= ans do
  i_six += 1
  six_ary << 6**i_six
  ans = 6**i_six
end
six_ary.pop
ans = 0
while 100000 >= ans do
  i_nine += 1
  nine_ary << 9**i_nine
  ans = 9**i_nine
end
nine_ary.pop

nums = six_ary + nine_ary
nums << 1
nums.sort!

mainasu_count = 0
index = 0
while i != 0 do
  target = true
  index = 0
  while target do
    if nums[index] >= i
      if nums[index] == i
        i -= nums[index]
        mainasu_count += 1
        target = false
        break
      end
      if index == 0
        i -= 1
        mainasu_count += 1
        target = false
      else
        i -= nums[index - 1]
        mainasu_count += 1
        target = false
      end
    else
      index += 1
    end
  end
end

p mainasu_count
  