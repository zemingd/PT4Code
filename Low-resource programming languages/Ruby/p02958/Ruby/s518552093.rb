n = gets().to_i
a = gets().split(' ').map(&:to_i)

def swappable(big, small)
    if (a[big - 1] < a[small] || big == 0) &&
      (a[small] < a[big + 1] || big == n - 1) &&
      a[small - 1] < a[big] && (a[big] < a[small + 1] || small == n - 1)
return true
    end
  return false
 
end


big = -1
small = -1
s = 0
for i in 0..(n-1)
  if i < n - 1
    if a[i] > a[i + 1]
      case s
      when 0 then
        s = 1
        big = i
      when 1 then
        s = 2
        small = i + 1
      when 2 then
        s = 3
        break # impossible
      end
    end
  end
end
  
  case s
when 0 then
  puts 'YES'
when 2 then
  if swappable(big, small)
    puts 'YES'
  else
    puts 'NO'
  end
else
  puts 'NO'
end
    