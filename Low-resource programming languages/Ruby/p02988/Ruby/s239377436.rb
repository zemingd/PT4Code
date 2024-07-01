N = gets.chomp
strs = gets.chomp.split(' ').map(&:to_i)
ans = 0
strs.each_with_index do |str, idx|
  if idx == 0 || idx == strs.size-1
    next
  else
    ans += 1 if [strs[idx-1],strs[idx],strs[idx+1]].sort[1] == strs[idx]
  end
end
puts ans