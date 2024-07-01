size = gets.to_i
arr = gets.split(' ').map(&:to_i)
hash = arr.group_by(&:itself)
ans = {}
conb_count = 0
hash.each{|key, val|
  conb = val.size * (val.size - 1) / 2
  ans.store(key, conb)
  conb_count += conb
}

arr.each do |val|
  tmp = hash[val].size
  puts (conb_count - ans[val] + (tmp -1) * (tmp -2) /2)
end