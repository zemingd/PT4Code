n = gets.to_i
l = gets.split.map(&:to_i)
l.sort!
ans = 0
def bxmin(array,arrayLength,s,t)
  d = 0
  u = arrayLength - 1
  while true
    mid = (d+u)/2
    if array[mid] > array[t] - array[s]
      u = mid
    else
      d = mid + 1
    end
    if array[d] > array[t] - array[s]
      break
    end
    if d >= u
      d = nil
      break
    end
  end
  return d
end

(1..n-2).each do |i|
  ((i+1)..n-1).each do |j|
    ans += i - [bxmin(l,n,i,j),i].min
  end
end
puts ans