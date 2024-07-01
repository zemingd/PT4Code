x,n = gets.split.map(&:to_i)
a = (0..101).map(&:to_i)
gets.split.map(&:to_i).each{|p| a.delete(p)}
min = 1000
ans = x - a[0]
a.each do |aa|
  if min > (x-aa).abs
    min = (x-aa).abs
    ans = aa
  else
    break
  end
end
puts ans
