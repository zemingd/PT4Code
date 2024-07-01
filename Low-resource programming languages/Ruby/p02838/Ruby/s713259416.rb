n = gets.to_i
as = gets.chomp.split.map(&:to_i)
array = Array.new(60,0)
MOD = (1e9 + 7).to_i
ans = 0
as.each do |a|
  a = a.to_s(2)
  a_size = a.size
  (0..a.size-1).each do|i|
    array[i] += 1 if a[a_size - i - 1] == "1"
  end
end
array.each_with_index do |k,i|
  ans += k * (n - k) * 2 ** i
  ans %= MOD
end
puts ans