#!/usr/bin/ruby

def solve(a, b)
  if b % a == 0
    a + b
  else
    b - a
  end
end

def each_case(sin)
  while ln = sin.gets
    a, b = ln.chomp.split(" ").map(&:to_i)
    yield a, b
  end
end

each_case(STDIN) do |a, b|
  puts solve(a, b).to_s
end


