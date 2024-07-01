#!/usr/bin/env ruby

s = gets.chomp.split(//)
t = gets.chomp.split(//)

h = Hash.new
nn = Hash.new
result = 'Yes'
s.size.times do |i|
  if h.has_key?(s[i])
    if (h[s[i]] != t[i])
      result = 'No'
    end
  else
    h[s[i]] = t[i]
  end
  if hh.has_key?(t[i])
    if (hh[t[i]] != s[i])
      result = 'No'
    end
  else
    hh[t[i]] = s[i]
  end
end

#if (h.values.size != h.values.uniq.size)
#  result = 'No'
#end

#h.keys.each do |k|
#  v = h[k]
#  if (h[v] != k && !h[v])
#    result = 'No'
#  end
#end

puts result
