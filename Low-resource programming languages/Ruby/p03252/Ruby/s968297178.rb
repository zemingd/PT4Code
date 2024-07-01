# 解説AC(のつもり)
# 自力AC時、嘘解法だったのでやり直し
s = gets.chomp
t = gets.chomp
s_replace = {}
t_replace = {}
n = s.length
ok = true
for i in 0...n do
  if s_replace.include?(s[i])
    if s_replace[s[i]] != t[i]
      ok = false
      break
    end
  else
    s_replace[s[i]] = t[i]
  end
  if t_replace.include?(t[i])
    if t_replace[t[i]] != s[i]
      ok = false
      break
    end
  else
    t_replace[t[i]] = s[i]
  end
end
puts ok ? "Yes" : "No"
