#!/usr/bin/env ruby
# opt(i) = min(opt(i-2)+|c(i, i-2)|, opt(i-1)+|c(i, i-1)|)

n = STDIN.readline.strip.to_i
h = STDIN.readline.strip.split(' ').map(&:to_i)

def opt(h)
  m = []
  m[0] = 0
  m[1] = (h[1] - h[0]).abs 
  for i in 2..h.size-1 do
    c_1 = m[i-1] + (h[i] - h[i-1]).abs
    c_2 = m[i-2] + (h[i] - h[i-2]).abs
    m[i] = [c_1, c_2].min
  end
  m[-1]
end

puts opt(h)
