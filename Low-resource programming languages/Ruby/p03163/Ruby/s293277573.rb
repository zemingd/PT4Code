#!/usr/bin/env ruby

n, w = STDIN.readline.strip.split(' ').map(&:to_i)
wv = STDIN.read.split("\n").map{|l| l.split(' ').map(&:to_i)}

def opt(w, wv, m)
  for j in 0..w do
    m[0][j] = 0
  end
  for i in 1..wv.size do
    for j in 0..w do
      if j >= wv[i-1][0]
        with = wv[i-1][1] + m[i-1][j-wv[i-1][0]]
        without = m[i-1][j]
        m[i][j] = [with, without].max
      else
        m[i][j] = m[i-1][j]
      end
    end
  end
  # puts "m:#{m}"
  m[wv.size][w]
end

m = Array.new(wv.size+1){[]}
puts opt(w, wv, m)
