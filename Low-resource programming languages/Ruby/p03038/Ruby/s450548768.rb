n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).map {|i| [i, 1] }

m.times.map do
  a << gets.split.map(&:to_i).reverse
end

ans = 0
count = n

a.sort.reverse.each do |(val, num)|
  if count > num
    ans += val * num
    count -= num
  else
    break ans += val * count
  end
end

puts ans
