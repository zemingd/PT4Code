N = gets.to_i
A = gets.split.map(&:to_i)
MOD = 10 ** 9 + 7

result = Array.new(60) do |i|
  base = 1 << i
  c = [0, 0]
  A.each do |a|
    c[a[i]] += 1
  end
  c[0] * c[1] * base % MOD
end.inject(&:+)

puts result % MOD
