x,_ = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
#p "x:#{x}, n:#{n}, arr:#{arr}"

if arr == [] #空
  puts x
else
  unless arr.include?(x) #含まれない
    puts x 
  else
    s = ((0..100).to_a) - arr
    i = 0
    min = -1
    # 小さい
    while s[i] < x
      if min < s[i]
        min = s[i]
      end
      i += 1
    end

    # 大きい
    j = s.size - 1
    max = 101
    while s[j] > x
      if max > s[j]
        max = s[j]
      end
      j -= 1
    end
    if (max-x).abs < (x-min).abs
      puts max
    else
      puts min
    end
  end
end