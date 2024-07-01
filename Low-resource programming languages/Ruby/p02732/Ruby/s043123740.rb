gets

a = gets.chomp.split.map(&:to_i)

amap = Hash.new(0)

def combi(n,k)
  k=n-k if 2*k > n
  return 1 if k == 0
  ((n-k+1)..n).reduce(&:*)/((1..k).reduce(&:*))
end

a.each do |i|
  amap[i] += 1
end

a.each_with_index do |x, index|
  n = 0
  amap.each do |k, v|
    nc = k == x ? v - 1 : v
    next if nc < 2
    n += combi(nc,2)
  end
  puts n
end