mod = 998244353
n = gets.to_i
ds = gets.split.map(&:to_i)

if ds[0] != 0
  puts 0
  exit
end

h = Hash.new(0)
mx = -1
ds.map do |d|
  h[d] += 1
  mx = d if d > mx
end

ans = 0
(0..mx).map do |i|
  if i == 0
    if h[0] != 1
      puts 0
      exit
    end
  elsif i == 1
    ans = 1
  else
    ans *= (h[i - 1] ** h[i])
    ans %= mod
  end
end
p ans
