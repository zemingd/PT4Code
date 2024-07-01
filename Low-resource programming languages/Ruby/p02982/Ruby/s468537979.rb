n, d = gets.chomp.split.map(&:to_i)
xx = []
n.times do
  xx << gets.chomp.split.map(&:to_f)
end

ans = 0
n.times do |i|
  n.times do |j|
    next if i == j
    tmp = 0
    d.times do |k|
      tmp += (xx[i][k] - xx[j][k])**2
    end

    dis = Math.sqrt(tmp)

    ans += 1 if dis == dis.to_i
  end
end

p ans/2

