while line = gets
  a = line.to_i
  count = a - 1
  c = 100000 * 1.05
  count.times do
    c = c * 1.05 * 1.0
    tmp = c
    zzz = tmp % 1000
    zzz == 0 ? x = 0 : x = 1000
    c = tmp + x - zzz
  end
  puts c
end