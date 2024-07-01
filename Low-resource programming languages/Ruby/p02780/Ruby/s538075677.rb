#!/usr/bin/env ruby

def calSum(n)
  return (n * (n+1))/2.0
end

def calExpectedValue(n)
  return calSum(n.to_i) / n
end


attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0].to_i
K = attrs[0][1].to_i
sai = attrs[1]

max_expected = 0
N.times do |i|
  targetMin = i
  targetMax = i + K - 1
  break if targetMax > (N-1)

  total_expected = 0
  K.times do |k|
    total_expected += calExpectedValue(sai[i+k])
  end
  max_expected = total_expected if max_expected < total_expected
end

return max_expected