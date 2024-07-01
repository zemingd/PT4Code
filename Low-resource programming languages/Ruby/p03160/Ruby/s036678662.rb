#!/usr/bin/env ruby
# opt(i) = min(opt(i-2)+|c(i, i-2)|, opt(i-1)+|c(i, i-1)|)

n = STDIN.readline.strip.to_i
h = STDIN.readline.strip.split(' ').map(&:to_i)

def opt(i, h, m)
  return m[i] if m[i]
  return 0 if i == 0
  if i == 1 
    m[1] = (h[1] - h[0]).abs 
  else
    c_1 = opt(i-1, h, m) + (h[i] - h[i-1]).abs
    c_2 = opt(i-2, h, m) + (h[i] - h[i-2]).abs
    m[i] = [c_1, c_2].min
  end
end

m = []
puts opt(n-1, h, m)