s = gets.chomp
t = gets.chomp
n = s.size
trs = Hash.new { |hash, key| hash[key] = key }

for i in 0...n do
  c = trs[s[i]]
  trs[s[i]] = "0"
  trs[trs.key(t[i])] = c
  trs[trs.key("0")] = t[i]
end

ans = s.dup
for i in 0...n do
  ans[i] = trs[ans[i]]
end

puts ans == t ? "Yes" : "No"