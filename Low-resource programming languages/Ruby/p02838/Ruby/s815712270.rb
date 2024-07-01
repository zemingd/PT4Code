N = gets.to_i
A = gets.split.map(&:to_i)
MOD = 10 ** 9 + 7

result = 0
60.times do |i|
  base = 1 << i
  c = [0, 0]
  A.each do |a|
    index = (a & base).zero? ? 0 : 1
    c[index] += 1
  end
  result += 2 * c[0] * c[1] * base
end

puts result / 2 % MOD
