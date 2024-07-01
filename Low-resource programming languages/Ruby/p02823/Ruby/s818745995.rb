def lscan; gets.split.map(&:to_i); end

n, a, b = lscan

if (b - a).even?
  p (b-a)/2
else
  s = ((a-1)+1)+(b-a-1)/2
  b, a = n-a+1, n-b+1
  t = ((a-1)+1)+(b-a-1)/2
  p [s, t].min
end