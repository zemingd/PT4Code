n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = 0
0.upto(n) do |i|
  0.upto(n-i) do |j|
    next if i + j > m
    b = (a[0,i] + a[-j,j]).dup
    b.sort!
    count = m - j - i
    while count > 0 && b.size > 0
      count -= 1
      b.shift if b.first < 0
    end
    sum = b.inject(0,:+)
    ans = sum if ans < sum
  end
end

puts ans