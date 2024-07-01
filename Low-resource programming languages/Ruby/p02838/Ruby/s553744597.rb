N = gets.to_i
A = gets.split.map(&:to_i)
MOD = 10 ** 9 + 7

result = Array.new(60) do |i|
  base = 1 << i
  c = [0, 0]
  A.each do |a|
    index = (a & base).zero? ? 0 : 1
    c[index] += 1
  end
  2 * c[0] * c[1] * base
end.inject(&:+)

puts result / 2 % MOD
