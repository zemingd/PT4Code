gets.to_i
arr = gets.split(' ').map(&:to_i)
hash = arr.group_by(&:itself)

comb_ans = {}
comb_count = 0
hash.each{|key, val|
  comb = val.size * (val.size - 1) / 2
  comb_ans.store(key, comb)
  comb_count += comb
}
 
arr.each do |val|
  tmp = hash[val].size
  puts (comb_count - comb_ans[val] + (tmp - 1) * (tmp - 2) / 2)
end