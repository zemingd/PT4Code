def lscan; gets.split.map(&:to_i); end

gets
m = lscan.reduce{|s,e| s*=e; s > 2e18 ? 2e18 : s}
if m > 10**18
  p -1
else
  p m
end