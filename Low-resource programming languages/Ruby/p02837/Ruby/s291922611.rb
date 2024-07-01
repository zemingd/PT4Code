n = gets.to_i
h = {}
as = []
n.times do |i|
  a = gets.to_i
  h[i+1] = []
  a.times do
    x,y = gets.split.map(&:to_i)
    h[i+1].push([x, y])
  end
end

ans = 0
(0..('1'*n).to_i(2)).each do |i|
  bit = i.to_s(2).rjust(n, '0').chars

  ok = true
  bit.each.with_index(1) do |b, j|
    next if b == '0'
    h[j].each do |xy|
      x = xy[0]
      y = xy[1]
      if bit[x-1].to_i != y.to_i
        ok = false
      end
    end
  end
  next unless ok

  ans = [ans, bit.count('1')].max
end

puts ans
