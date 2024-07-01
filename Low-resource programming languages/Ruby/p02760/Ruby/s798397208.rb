#!/usr/bin/env ruby

require 'pp'
attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

A = Array.new(3).map{Array.new(3,0)}
B = Array.new(3).map{Array.new(3,false)}
A[0] = attrs[0]
A[1] = attrs[1]
A[2] = attrs[2]

flatArray = A.flatten
N = attrs.length - 3
atari = 0
result = false

N.times do |n|
  num = attrs[n+3][0]
  next unless flatArray.include?(num)
  atari += 1
  index = flatArray.index(num) + 1
  i = index / 3
  j = index % 3
  i = 2 if i == 3
  j = 3 if j == 0
  j -= 1
  B[i][j] = true
  next if atari < 3
  # 横検索
  if (B[0].select{|b| b == true}).length == 3 then
    result = true
    break
  end
  if (B[1].select{|b| b == true}).length == 3 then
    result = true
    break
  end
  if (B[2].select{|b| b == true}).length == 3 then
    result = true
    break
  end
  # 縦検索
  if B[0][0] == true && B[1][0] == true && B[2][0] == true then
    result = true
    break
  end
  if B[0][1] == true && B[1][1] == true && B[2][2] == true then
    result = true
    break
  end
  if B[0][2] == true && B[1][2] == true && B[2][2] == true then
    result = true
    break
  end
  # 斜め
  if B[0][0] == true && B[1][1] == true && B[2][2] == true then
    result = true
    break
  end
  if B[0][2] == true && B[1][1] == true && B[2][0] == true then
    result = true
    break
  end

end

puts result ? "Yes" : "No"