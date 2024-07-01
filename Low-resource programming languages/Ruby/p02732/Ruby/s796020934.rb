gets

a = gets.chomp.split.map(&:to_i)

amap = Hash.new(0)

def combi(n, k)
  k = [k, n - k].min

  if k == 0
     val = 1
  else
     val = combi(n-1,k-1) * n / k
  end

  return val
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