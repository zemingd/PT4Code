#! /usr/bin/env ruby

input = STDIN.read.split("\n")

nums = input[1].split(' ').map{|v| v.to_i}

i = 0
mx = 0

while true
  r = nums.map{|v| i % v}
  res = r.sum

  if res > mx
    mx = res
  end

  if res == 0 && i > 0
    break
  end
  i = i + 1
end
print mx
