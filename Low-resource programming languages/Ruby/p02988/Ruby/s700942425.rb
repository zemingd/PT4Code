n = gets.to_i
ary = gets.strip.split.map(&:to_i)
cnt = 0
ary.each_with_index do |p, i|
  break if i+2 == ary.length
  new_ary = ary[i], ary[i+1], ary[i+2]
  p new_ary
  cnt+=1 if new_ary.max == new_ary[0] && new_ary.min == new_ary[2] || new_ary.min == new_ary[0] && new_ary.max == new_ary[2]
end
puts cnt