n = gets.to_i
ds = gets.chomp.split.map(&:to_i)
mod = 998244353
cnt = Array.new(n,0)
ans = 1
(0..n-1).each do |i|
  if (i == 0 && ds[i] != 0) || (i != 0 && ds[i] == 0)
    puts 0
    exit 0
  end
  cnt[ds[i]] += 1
end
present = 0
cnt.shift
cnt.each do |i|
  if present != 0
    ans *= present ** i
    ans %= mod
  end
  present = i
end

puts ans