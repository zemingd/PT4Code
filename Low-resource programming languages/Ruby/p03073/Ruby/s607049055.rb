s = gets.split("").map(&:to_i)
count = 0
 
n = s.size
 
n.times do |i|
  if i.odd? && s[i] != 0
    count += 1
  end
  if i.even? && s[i] != 1
    count += 1
  end
end
 
puts [count, n-count].min
