n, m, k = gets.split(' ').map{|s| s.to_i}
a = gets.split(' ').map{|s| s.to_i}
b = gets.split(' ').map{|s| s.to_i}

ax = []
ax[0] = 0;
n.times do |i|
  ax[i + 1] = ax[i] + a[i]
  if ax[i + 1] > k
    n = i + 1
    break
  end
end
bx = []
bx[0] = 0;
m.times do |i|
  bx[i + 1] = bx[i] + b[i]
  if bx[i + 1] > k
    m = i + 1
    break
  end
end

max = 0

bu = 0
n.step(0, -1) do |ai|
  bu.step(m, 1) do |bi|
	if (ax[ai] + bx[bi] <= k)
      if max < ai + bi
        max = ai + bi
        bu = bi
      end
    else
      break
    end
  end
  break if bu == m
end

puts max
