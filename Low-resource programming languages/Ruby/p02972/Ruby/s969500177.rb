n = gets.to_i
a = gets.split.map(&:to_i)
p = []
n.pred.downto(0) do |i|
  unless a[i].zero?
    p << i + 1
    u = 1
    v = i + 1
    while u * u <= v
      if v % u == 0
        a[u - 1] ^= 1
        unless u == v / u
          a[v / u - 1] ^= 1
        end
      end
      u += 1
    end
  end
end
if p.size > 0
  puts p.size
  puts p.join(' ')
else
  puts '0'
end