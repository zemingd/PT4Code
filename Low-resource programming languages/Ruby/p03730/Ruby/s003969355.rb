#!/usr/bin/env ruby
a, b, c = STDIN.readline().strip().split(' ').map(&:to_i)
def make_modulo(a, b)
  m = []
  sa = a
  while not m.include?(sa % b) do
    m << sa % b
    sa += a
  end
  # puts "#{m}"
  m
end
def check(m, c)
  m.include?(c)
end
puts "#{check(make_modulo(a, b), c) ? 'YES' : 'NO'}"
