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

def find_max(a, b)
  max_a = a[0][1]
  max_b = 0
  i = 0
  while i < a.length and a[i][1] == max_a do 
    max_i_b = a[i][0] != b[0][0] ? b[0][1] : b.length == 1 ? 0 : b[1][1]
    max_b = max_i_b if max_b < max_i_b
    i += 1
  end
  max_a + max_b
end
        
max_e = find_max(e_s, o_s)
max_o = find_max(o_s, e_s)
m = [max_e, max_o].max
puts n - m
