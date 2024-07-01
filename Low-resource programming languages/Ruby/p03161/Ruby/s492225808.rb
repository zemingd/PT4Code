#!/usr/bin/env ruby
# opt(i) = min{ opt(i-2)+|c(i, i-2)|, opt(i-1)+|c(i, i-1)|, ..., opt(i-k)+|c(i, i-k| }

n, k = STDIN.readline.strip.split(' ').map(&:to_i)
h = STDIN.readline.strip.split(' ').map(&:to_i)

def opt(k, h)
  m = []
  m[0] = 0
  m[1] = (h[1] - h[0]).abs 
  for i in 1..h.size-1 do
    c = []
    for j in 1..k do
      break if i-j < 0
      c[j-1] = m[i-j] + (h[i] - h[i-j]).abs
    end
    m[i] = c.min
  end
  m[-1]
end

puts opt(k, h)
