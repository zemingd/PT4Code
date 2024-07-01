s = gets.chomp
t = gets.chomp

require 'set'

ss = Set.new(s.chars)
ts = Set.new(t.chars)

if !ss.superset?(ts)
  p -1
else
  cnt, idx, c = 0, 0, 0
  while true
    c += 1 if s[idx] == t[c]
    idx += 1
    cnt += 1
    idx = 0 if idx == s.size
    break if c == t.size
  end
  p cnt
end