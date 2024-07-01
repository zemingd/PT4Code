(X, Y, Z, K), As, Bs, Cs = readlines.map{|l| l.split.map(&:to_i)}

@as, @bs, @cs = [As, Bs, Cs].map{|xs| [nil] + xs.sort.reverse}
ans = []
for i in 1 .. X
  for j in 1 .. Y
    break if i*j > K
    for k in 1 .. Z
      break if i*j*k > K
      ans << @as[i] + @bs[j] + @cs[k]
    end
  end
end
puts ans.sort.reverse.take(K)