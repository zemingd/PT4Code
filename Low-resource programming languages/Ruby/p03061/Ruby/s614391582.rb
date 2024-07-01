_,a=$<.map{|m|m.split.map(&:to_i)}
mgcd = a[0]
mngcd = 1
a[1..-1].each.with_index(1) do |ai, i|
  gcd = mgcd.gcd(a[i])
  mngcd = mngcd.gcd(a[i])
  if gcd < mgcd && mngcd < mgcd
    mngcd = mgcd
  end
  mgcd = gcd
end

fgcd = 0
a[1..-1].each do |ai|
  fgcd = fgcd.gcd(ai)
end
p [mngcd, mgcd, fgcd].max
