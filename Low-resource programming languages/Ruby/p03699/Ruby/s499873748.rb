#!/usr/bin/env ruby
n = STDIN.readline.strip.to_i
s = []
n.times do
  s << STDIN.readline.strip.to_i
end
s = s.sort
def sum(a)
  a.inject(0){|n, i| n += i}
end
sum = sum(s)
i = 0
while sum % 10 == 0 and i < s.length
  sum -= s[i]
  i += 1
end
puts sum