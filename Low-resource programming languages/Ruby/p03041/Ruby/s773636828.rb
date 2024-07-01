n,k = gets.split.map(&:to_i)
s = gets.chars
ans = []
s.each_with_index  do  |v,i|
 if v == s[k-1]
  ans.push(v.downcase)
 else
  ans.push(v)
 end
end
puts ans.join

