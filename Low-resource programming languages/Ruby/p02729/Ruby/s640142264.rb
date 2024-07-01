#!/usr/bin/ruby

if ARGV.empty?
  args = $stdin.split
else
  args = ARGV
end

N, M = *args.map {|i| i.to_i }

# e + e
# o + o

def mC2(m)
  # m! / (2 * (m - 2)!)
  # m * (m - 1) / 2
  m * (m - 1) / 2
end

puts mC2(N) + mC2(M)
