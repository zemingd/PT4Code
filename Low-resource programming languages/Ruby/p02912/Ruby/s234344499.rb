n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse

ans = 0
if n == 1
  ans = a[0] / 2 ** m
else
  while m > 0
    x = a.shift
    x /= 2
    p = n - 2
    (0..(n - 2)).each do |i|
      if a[i] < x
        p = i
        break
      end
    end
    a.insert(p, x)
    m -= 1
  end
  ans = a.inject(:+)
end

puts ans
