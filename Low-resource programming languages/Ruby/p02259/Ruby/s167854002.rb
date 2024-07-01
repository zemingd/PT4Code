num = gets.to_i
ary = gets.split.map(&:to_i)
  
count = 0
index_last = num - 2
  
while index_last >= 0
  
  for i in 0 .. index_last
  
    if ary[i] > ary[i + 1]
      ary[i], ary[i + 1] = ary[i + 1], ary[i]
      count += 1
    end
  end
  
  index_last -= 1
end

puts ary.join(" "), count
