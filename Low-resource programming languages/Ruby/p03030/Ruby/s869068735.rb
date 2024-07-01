n = gets.to_i
arr = []
n.times do |i|
  s, pt = gets.split
  pt = pt.to_i
  arr << [s, pt, i+1]
end

ans = []
n.times do |i|
  injection = arr[i]
  if i == 0
    ans.push(injection)
    next
  end
  
  i.times do |k|
    if k == (i - 1)
      if ans[k][0] < injection[0]
        ans.push(injection)
        break
      else
        if ans[k][0] > injection[0]
          ans.insert(k, injection)
          break
        else
          if ans[k][1] > injection[1]
            ans.push(injection)
            break
          else
            ans.insert(k, injection)
            break
          end
        end
      end
      
      
    end

    next if ans[k][0] < injection[0]
    if ans[k][0] == injection[0]
      next if ans[k][1] > injection[1]
      if ans[k][1] < injection[1]
        ans.insert(k, injection)
        break
      end
    end
    ans.insert(k, injection)
    break
  end
end

puts ans.map{|arr| arr[2] }