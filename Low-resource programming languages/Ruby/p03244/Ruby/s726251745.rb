#!/usr/bin/env ruby
n = STDIN.readline.strip.to_i
v = STDIN.readline.strip.split(' ').map(&:to_i)
o = {}
e = {}
for i in 0..(n/2-1) do
  e[v[i*2]] = e[v[i*2]].nil? ? 1 : e[v[i*2]]+1
  o[v[i*2+1]] = o[v[i*2+1]].nil? ? 1 : o[v[i*2+1]]+1
end
e_s = e.sort_by{|k, _v| _v}
o_s = o.sort_by{|k, _v| _v}
if e_s.length == 1 and o_s.length == 1 and e_s[0][0] == o_s[0][0]
  e_n = 0
  o_n = o_s[0][1]
elsif e_s.length == 1 and o_s.length != 1
  e_n = e_s[0][1]
  o_n = o_s[1][1]
elsif e_s.length != 1 and o_s.length == 1
  e_n = e_s[1][1]
  o_n = o_s[0][1]
elsif e_s[0][0] == o_s[0][0]
  e0o1 = e_s[0][1] + o_s[1][1]
  e1o0 = e_s[1][1] + o_s[0][1]
  if e0o1 >= e1o0
    e_n = e_s[0][1]
    o_n = o_s[1][1]
  else
    e_n = e_s[1][1]
    o_n = o_s[0][1]
  end
else
  e_n = e_s[0][1]
  o_n = o_s[0][1]
end
puts n - (e_n + o_n)

    
