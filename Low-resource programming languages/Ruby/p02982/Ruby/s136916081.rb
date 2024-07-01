def lscan; gets.split.map(&:to_i); end

n, d = lscan

vs = n.times.map{lscan}

ans = 0
vs.combination(2) do |v1, v2|
  r2 = v1.zip(v2).map{|y, z| (y-z)**2}.reduce(:+)
  ans += 1 if Math.sqrt(r2).to_i**2 == r2
end

p ans
