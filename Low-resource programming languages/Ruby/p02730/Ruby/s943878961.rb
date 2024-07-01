#!/usr/bin/env ruby

s = STDIN.gets.chomp
len = s.length

s1 = s.slice(0, (len-1) / 2)
s2 = s.slice((len+3) / 2 - 1, len)

ans = (s == s.reverse and s1 == s1.reverse and s2 == s2.reverse) ? "YES" : "NO"

puts ans
