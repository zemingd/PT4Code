def lscan; gets.split.map(&:to_i); end

n,m = lscan
aa = lscan
lc = aa.reduce(&:lcm)

if lc.odd?
  p 0
  exit
end

# lc/2, lc+lc/2, 2*lc+lc/2, ...

p (0..(m+1)).bsearch{|i| (i-1)*lc+lc/2 > m}-1