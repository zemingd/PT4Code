N = gets.to_i
ds = gets.split.map(&:to_i)

if ds[0] != 0
  puts 0
  exit 0
end

sorted = ds.sort.uniq
n = 0
sorted.each do |d|
  unless d == n
    puts 0
    exit 0
  end
  n += 1
end

table = ds.reduce({}) do |acc, d|
  acc[d] ||= 0
  acc[d] += 1
  acc
end

if table[0] >= 2
  puts 0
  exit 0
end

MOD = 998244353
ans = 1
(1..(table.size - 1)).each do |d|
  pd = table[d - 1]
  ans = ans * (pd ** table[d]) % MOD
end
puts ans
