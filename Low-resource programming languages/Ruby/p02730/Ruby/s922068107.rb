#!/usr/bin/env ruby

s = STDIN.gets.chomp
len = s.size

s1 = s[0, (len-1) / 2]
s2 = s[(len+3) / 2 - 1, len]

ans = (s == s.reverse and s1 == s1.reverse and s2 == s2.reverse) ? "YES" : "NO"

puts ans
