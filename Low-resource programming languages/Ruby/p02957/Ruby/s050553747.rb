def lscan; gets.split.map(&:to_i); end

a, b = lscan

a,b = b,a if a > b

if (b-a).odd?
  puts :IMPOSSIBLE
else
  p (b-a)/2+a
end