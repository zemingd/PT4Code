def swap(ary,start,target)
  tmp = ary[target]
  ary[target] = ary[start]
  ary[start] = tmp
  ary
end

ary = gets.chomp.split(" ")
ary = swap(ary,0,1)
ary = swap(ary,0,2)
puts ary.join(" ")