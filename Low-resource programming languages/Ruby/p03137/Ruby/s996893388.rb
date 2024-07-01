#!/usr/bin/ruby

def solve(n, m, xs)
  return 0 if n >= m

  xs.sort!
  gaps = []
  for i in 0...xs.length - 1
    gaps.push(xs[i + 1] - xs[i])
  end
  gaps.sort!  
  (n - 1).times do
    gaps.pop
  end
  gaps.sum
end

def each_case(sin)
  s = sin.read.each_line.map(&:chomp)
  n, m = s[0].split(" ").map(&:to_i)
  xs = s[1].split(" ").map(&:to_i)
  yield n, m, xs
end

each_case(STDIN) do |n, m, xs|
  puts solve(n, m, xs)
end