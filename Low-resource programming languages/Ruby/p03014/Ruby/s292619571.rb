h, w = gets.chomp.split.map(&:to_i)
a = Array.new(h)
0.step(h-1) do |i|
  a[i] = gets.chomp
end

ary = Array.new(h) { Array.new(w) }
ary_2 = Array.new(h) { Array.new(w) }


dot = '.'
zero = 'zero'

num = {}
num[zero] = 0
ite = 0
0.step(h-1) do |gyo|
  tmp = 0
  0.step(w-1) do |retsu|
    if a[gyo][retsu] == dot
      tmp += 1
      ary[gyo][retsu] = ite
    else
      ary[gyo][retsu] = zero
      num[ite] = tmp
      tmp = 0
      ite += 1
    end
  end
  if tmp > 0
    num[ite] = tmp
    ite += 1
    tmp = 0
  end
end

0.step(w-1) do |retsu|
  tmp = 0
  0.step(h-1) do |gyo|
    if a[gyo][retsu] == dot
      tmp += 1
      ary_2[gyo][retsu] = ite
    else
      ary_2[gyo][retsu] = zero
      num[ite] = tmp
      tmp = 0
      ite += 1
    end
  end
  if tmp > 0
    num[ite] = tmp
    ite += 1
    tmp = 0
  end
end

max = 0
t = 0
0.step(w-1) do |retsu|
  0.step(h-1) do |gyo|
    t = num[ary[gyo][retsu]] + num[ary_2[gyo][retsu]]
    max = t if t > max
  end
end

p max - 1
