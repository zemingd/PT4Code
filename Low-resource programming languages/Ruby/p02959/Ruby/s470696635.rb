n = gets.to_i
a, b = 2.times.map { gets.split.map(&:to_i) }

answer = b.each_with_index.reduce(0) do |s, (y, i)|
  if a[i] < y
    tmp = y - a[i]
    if a[i + 1] - tmp >= 0
      a[i + 1] -= tmp
      s += a[i] + tmp
    else
      tmp2 = a[i + 1]
      a[i + 1] = 0
      s += a[i] + tmp2
    end
  else
    s += y
  end
end

puts answer