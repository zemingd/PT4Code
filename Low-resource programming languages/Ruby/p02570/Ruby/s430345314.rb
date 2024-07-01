require 'bigdecimal/util'
d, t, s = gets.split.map &:to_i
if d / s.to_d <= t
  puts 'Yes'
else
  puts 'No'
end