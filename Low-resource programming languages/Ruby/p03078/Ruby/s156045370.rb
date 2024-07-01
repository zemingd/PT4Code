(X, Y, Z, K), As, Bs, Cs = readlines.map{|l| l.split.map(&:to_i)}

as, bs, cs = [As, Bs, Cs].map{|xs| [nil] + xs.sort.reverse}
ans = []
(1 .. X).each do |i|
  (1 .. Y).each do |j|
    (1 .. Z).each do |k|
      ans << as[i] + bs[j] + cs[k] if i*j*k <= K
    end
  end
end
puts ans.sort.reverse.take(K)