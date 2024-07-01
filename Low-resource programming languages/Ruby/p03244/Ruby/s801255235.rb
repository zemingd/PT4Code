n = gets.to_i
ary = gets.split.map(&:to_i)
gu = [0] * 100001
ki = [0] * 100001
n.times do |i|
  if i % 2 == 0
    gu[ary[i]]  += 1
  else
    ki[ary[i]]  += 1
  end
end
gu_index = gu.index(gu.max)
ki_index = ki.index(ki.max)
gusu = gu.max
kisu = ki.max

if gu_index == ki_index
  gu[gu_index] = 0
  ki[ki_index] = 0
  if gu.index(gu.max) + kisu > ki.index(ki.max) + gusu
    gusu = gu.max
  else
    kisu = ki.max
  end
end

puts n - gusu - kisu