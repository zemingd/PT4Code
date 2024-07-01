n, m = gets.split.map(&:to_i)
ks_m = m.times.map{|_| gets.split.map(&:to_i)}
p_m = gets.split.map(&:to_i)

ans = 0
[0, 1].repeated_permutation(n).to_a.each do |c|
  lighted = 0
  ks_m.each.with_index do |ks, idx|
    on = 0
    (1..ks[0]).each do |i|
      on += 1 if c[ks[i]-1] == 1
    end
    if on % 2 == p_m[idx]
      lighted += 1
    end
  end
  if lighted == m
    ans += 1
  end
end
p ans