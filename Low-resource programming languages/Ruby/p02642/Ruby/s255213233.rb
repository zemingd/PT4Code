n = gets.to_i
a = gets.split.map(&:to_i).sort
if a[0] == 1
  puts (n >= 2 && a[1] == 1) ? 0 : 1
else
  count = 0
  divisor = []
  for i in 0...n do
    next if i > 0 && a[i - 1] == a[i]
    ok = true
    divisor.each do |d|
      if a[i] % d == 0
        ok = false
        break
      end
    end
    if ok
      count += 1 unless i < n - 1 && a[i] == a[i + 1]
      divisor.push(a[i])
    end
  end
  puts count
end
