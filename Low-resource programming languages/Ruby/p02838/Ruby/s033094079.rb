n = gets.to_i
as = gets.chomp.split.map(&:to_i)
array = Array.new(60,0)
MOD = (1e9 + 7).to_i
ans = 0
as.each do |a|
  (0..59).each do|i|
    array[i] += a[i]
  end
end
array.each_with_index do |k,i|
  ans += k * (n - k) * 2 ** i
end
puts ans % MOD