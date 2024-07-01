n = gets.to_i
a = gets.split.map(&:to_i)

odd = []
even = []
(0..(n-1)).each do |i|
  if i.even?
    even.push(a[i])
  else
    odd.push(a[i])
  end
end

odd = odd.group_by{ |e| e }
even = even.group_by{ |e| e }

odd1 = odd2 = oddv1 = oddv2 = even1 = even2 = evenv1 = evenv2 = 0
odd.each do | key, v |
  if oddv1 < v.size
    odd2 = odd1
    oddv2 = oddv1
    odd1 = key
    oddv1 = v.size
  elsif oddv2 < v.size
    odd2 = key
    oddv2 = v.size
  end
end

even.each do | key, v |
  if evenv1 < v.size
    even2 = even1
    evenv2 = evenv1
    even1 = key
    evenv1 = v.size
  elsif evenv2 < v.size
    even2 = key
    evenv2 = v.size
  end
end

if even1 == odd1
  max =  [evenv1 + oddv2, evenv2 + oddv1].max
else
  max =  evenv1 + oddv1
end

puts n - max


