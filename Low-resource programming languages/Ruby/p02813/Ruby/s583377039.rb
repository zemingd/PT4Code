def lscan; gets.split.map(&:to_i); end
n = gets.to_i
pp = lscan
qq = lscan

i = 0
pi = nil
qi = nil
(1..n).to_a.permutation(n) do |perm|
  pi = i if perm == pp
  qi = i if perm == qq
  i += 1
end

p (pi-qi).abs