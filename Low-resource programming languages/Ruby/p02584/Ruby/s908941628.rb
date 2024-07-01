def lscan; gets.split.map(&:to_i); end

x,k,d = lscan

x = x.abs

m = x/d

if m >= k
  x -= d*k
  p x
  exit
end

x -= d*m
k -= m

if k.even?
  p x
else
  p (x-d).abs
end