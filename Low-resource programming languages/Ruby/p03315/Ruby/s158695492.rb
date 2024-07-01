#!/usr/bin/ruby
ans = 0
s = gets.chomp
for c in s do
    if c == '+'
        ans += 1
    else
        ans -= 1
    end
p ans