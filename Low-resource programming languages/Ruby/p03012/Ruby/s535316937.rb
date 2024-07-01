gets
arr = gets.split.map(&:to_i)
left, right = 0, 0
while(!arr.empty?)
  if(left < right)
    left += arr.first
    arr.shift
  else
    right += arr.last
    arr.pop
  end
end
puts (left - right).abs