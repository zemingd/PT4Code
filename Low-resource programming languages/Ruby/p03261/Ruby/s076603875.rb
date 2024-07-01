n = gets.to_i
ary = []
ans = "Yes"
n.times do
  ary << gets.strip
end
ary.each_with_index do |i, k|
  if ary.count(i) == 2
    ans = "No"
  else 
    if ary[k+1]
      i[(i.length-1)] != ary[(k+1)][0] ? ans = "No" : next
    end
  end
end

puts ans