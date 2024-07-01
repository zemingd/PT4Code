MOD = 1000000007

n, m = gets.chomp.split.map(&:to_i)
a = Array.new(n,1)
m.times do
  i = gets.chomp.to_i
  a[i] = 0
end

cnt = [1,a[1]]

(2..(n+1)).each do |i|
  if a[i] == 0
    cnt[i] = 0
  else
    cnt[i] = (cnt[i-2] + cnt[i-1]) % MOD
  end
end

puts(cnt[n])