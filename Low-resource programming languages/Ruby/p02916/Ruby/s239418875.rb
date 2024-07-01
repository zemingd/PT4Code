def solve()
  n = gets.to_i
  a = gets.split.map!(&:to_i)
  b = gets.split.map!(&:to_i)
  c = gets.split.map!(&:to_i)
  sum = 0
  n.times do |i|
    sum += b[a[i]-1]
  end
  (n-1).times do |i|
    if (a[i+1] - a[i]) == 1
      sum += c[a[i]-1]
    end
  end
  p sum
end
solve()