#!/usr/bin/env ruby
s = STDIN.readline().strip().split(' ').map(&:to_i)
s.sort!
puts s[0]+s[1] == s[2] ? 'Yes' : 'No'
