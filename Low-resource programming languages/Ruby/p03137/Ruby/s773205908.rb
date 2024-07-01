require 'pp'
n, m = STDIN.gets.split(" ").map(&:to_i)
xs = STDIN.gets.split(" ").map(&:to_i).sort

counts = m - n

if counts <= 0
  puts 0
else
  ds = []
  for i in 0...(xs.size-1)
    ds << xs[i+1] - xs[i]
  end

  ds = ds.sort
  puts ds[0, counts].reduce(:+)
end
