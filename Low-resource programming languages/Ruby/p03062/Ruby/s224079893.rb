_ = STDIN.gets.split.map(&:to_i)
a = STDIN.gets.split.map(&:to_i)

sum = a.inject(0) {|acc, v| acc + v.abs }

idx = -1

ms = a.select.with_index {|v,i|
  if v < 0
    idx = i
  end
  v <= 0
}

if ms.count.odd?
  max = ms.max
  if idx != -1 && a.count > idx + 1
    max = [max, a[idx + 1] * -1].max
  end
  sum = sum + (max * 2)
end

puts sum
