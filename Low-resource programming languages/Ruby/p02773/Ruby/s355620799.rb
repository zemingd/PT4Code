N = gets.to_i
s = N.times.map{gets.chomp}
ans = {}

s.sort!
(0..(N-1)).each do |i|
  if ans[s[i]].nil?
    ans[s[i]] = 0
  end
  ans[s[i]] += 1
end
max = ans.values.max

ans.each do |k, v|
  if v == max
    puts k
  end
end