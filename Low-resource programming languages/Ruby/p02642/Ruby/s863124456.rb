a= gets.to_i
c = gets.split.map(&:to_i)
s = c.sort

cnt = 0

s.each_with_index do |i, index| 
  if index == 0 && i == s[index + 1]
    cnt = cnt + 1
  end

  if index != 0
    if s.count(i) > 1
      cnt = cnt + 1
    else
      r = 0
      while r < index do
        if i % s[r] == 0
          cnt = cnt + 1
          break
        end
        r = r + 1
      end
    end
  end
end

ans = a - cnt
puts ans
  
  