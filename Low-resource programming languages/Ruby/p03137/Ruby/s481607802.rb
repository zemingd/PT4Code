n, m = gets.chomp.split(' ').map(&:to_i)
xs = gets.chomp.split(' ').map(&:to_i)

if n >= m
  puts 0
elsif n == 1
  puts xs.max - xs.min
else
  xs = xs.sort
  ds = {}
  (m-1).times do |i|
    ds[i] = xs[i+1] - xs[i]
  end
  ds = ds.sort { |(k1, v1), (k2, v2)| v2 <=> v1 }
  ds = ds.slice(0, n-1).sort { |a, b| a[0] <=> b[0] }
  pre = 0
  res = 0
  n.times do |i|
    if i == 0
      res += xs.slice(pre..ds[i][0]).max - xs.slice(pre..ds[i][0]).min
      pre = ds[i][0]
    elsif i < n - 1
      res += xs.slice((pre + 1)..ds[i][0]).max - xs.slice((pre + 1)..ds[i][0]).min
      pre = ds[i][0]
    else
      res += xs.slice((pre + 1)..(xs.size - 1)).max - xs.slice((pre + 1)..(xs.size - 1)).min
    end
  end
  puts res
end