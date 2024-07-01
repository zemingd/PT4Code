x, y, z, k = gets.split(' ').map(&:to_i)
as = gets.split(' ').map(&:to_i)
bs = gets.split(' ').map(&:to_i)
cs = gets.split(' ').map(&:to_i)

# 普通に loop * 3 で解くと as.size * bs.size * cs.size の計算量
anss = []
as.each do | a |
  bs.each do | b |
    cs.each do | c |
      anss << a+b+c
    end
  end
end
puts anss.sort{|n,m|m<=>n}