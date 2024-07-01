N,M=gets.chomp.split.map(&:to_i)
ARY=gets.chomp.split.map(&:to_i).sort

if N > 1 
  M.times do
    break if ARY.last == 0 # 全部0になってる
    x=1
    b=ARY.pop
    c=b/2
   
    min_idx=0
    max_idx= N-2
   
    until (max_idx - min_idx) <= 1 do
      idx = (min_idx+max_idx)/2
    
      if c > ARY[idx]
        min_idx = idx
        x = max_idx
      elsif c < ARY[idx]
        max_idx = idx
        x = max_idx
      else
        x = idx
        break
      end
    end
    if ARY[min_idx] < ARY[max_idx]
      ARY.insert(x, c)
    else
      ARY.insert(x-1, c)
    end
  end
   
  puts ARY.inject(&:+)
else
  puts ARY.first/(2**M)
end