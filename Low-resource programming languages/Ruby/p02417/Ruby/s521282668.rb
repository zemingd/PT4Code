ary = Array.new(26,0)
until (s = gets) == nil
  l = s.chomp.length
  for i in 1..l
    n = s[i-1].downcase.ord - "a".ord
    ary[n] += 1 if 0 <= n && n < 26
  end
end
ch = "abcdefghijklmnopqrstuvwxyz"
for i in 1..26
  puts ch[i-1] + " : " + ary[i-1].to_s
end