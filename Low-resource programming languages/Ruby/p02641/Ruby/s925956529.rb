x,n = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
#p "x:#{x}, n:#{n}, arr:#{arr}"

if arr == [] #空
  puts x
else
  unless arr.include?(x) #含まれない
    puts x
  else
    s = ((0..100).to_a) - arr
    if x == 100
      puts s[-1]
    elsif x == 0
      puts s[0]
    else
      i = 0
      min = -1
      # 小さい
      if s[i] > x
        #何もしない
      else
        while s[i] < x
          if min < s[i]
            min = s[i]
          end
          i += 1
        end
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
end