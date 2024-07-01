x, y, z, k = gets.split(' ').map(&:to_i)
as = gets.split(' ').map(&:to_i).sort.reverse
bs = gets.split(' ').map(&:to_i).sort.reverse
cs = gets.split(' ').map(&:to_i).sort.reverse

# Ptn.1
# 普通に loop * 3 で解くと as.size * bs.size * cs.size の計算量
anss = []
for l in 1 .. x
  for m in 1 .. y
    break if l*m > k
    for n in 1 .. z
      break if l*m*n > k
      anss << as[l-1]+bs[m-1]+cs[n-1]
    end
  end
end
puts anss.sort{|n,m|m<=>n}.take(k)