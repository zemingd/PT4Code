MOD = 10**9 + 7

count = Array.new(61,0)
n = gets.chomp.to_i
a = gets.chomp.split.map{ |ai| ai.to_i.to_s(2) }
n.times do |i|
  a[i].length.times do |j|
    count[j] += 1 if a[i][-1-j] == '1'
  end
end

ans = 0
61.times do |i|
  ans += 2**i * (n - count[i]) * count[i]
end

puts(ans % MOD)