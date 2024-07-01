#!/usr/bin/env ruby
n = STDIN.readline.strip.to_i
t, a = STDIN.readline.strip.split(' ').map(&:to_i)
h = STDIN.readline.strip.split(' ').map(&:to_i)
diff = h.map{|hi| ((t - hi * 0.006) - a).abs}
puts diff.each_with_index.min[1]+1
