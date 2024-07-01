N = gets.to_i
s = []
N.times do |i|
  s << gets.chomp.to_s
end

ans = {}
ret = 0
sorted_s = []
s.each do |t|
  key = t.split("").sort.join("")
  if ans.has_key?(key)
    ret += 1
  else
    ans[key] = 1
  end
end

puts ret