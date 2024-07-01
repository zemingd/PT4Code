n = gets.to_i
as = gets.split(' ').map(&:to_i)

max = 1000000
ds = (0..max).map {|i| i } 
(2..max).each do |i|
  next if ds[i] != i
  a = i
  while a <= max do
    ds[a] = i if ds[a] == a
    a += i
  end
end

require 'set'
pairwise = true
ps = Set.new
gcd = as[0]
as.each do |a|
  if pairwise
    cur = a
    sps = Set.new
    until cur == 1 
      p = ds[cur]
      sps << p
      cur /= p
    end
    if ps.intersect?(sps)
      pairwise = false
    else
      ps.merge(sps)
    end
  end
  
  gcd = gcd.gcd(a)
end

if pairwise
  puts 'pairwise coprime'
elsif gcd == 1
  puts 'setwise coprime'
else
  puts 'not coprime'
end
