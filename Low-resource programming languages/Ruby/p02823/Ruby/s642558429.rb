def lscan; gets.split.map(&:to_i); end

n, a, b = lscan

if (b - a).even?
  p (b-a)/2
else
  p [b-1, n-a].min
end