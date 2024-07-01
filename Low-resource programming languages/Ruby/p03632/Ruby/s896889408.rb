#!/usr/bin/ruby
#encoding: utf-8

#!/usr/bin/ruby
#encoding: utf-8
 
a,b,c,d = gets.split.map(&:to_i)
if b <= c or d <= a
  puts 0
  exit
end
s = [a,b,c,d].sort
puts s[2]-s[1]
