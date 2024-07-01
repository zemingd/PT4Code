C = 1_000_000_007

n, m = gets.split.map(&:to_i)
broken = m.times.map {gets.to_i}

memo = Array.new(n) {|i| broken.include?(i) ? 0 : nil}

steps = ->(num) {
  return memo[num] if memo[num]
  return 0 if num < 0
  return 1 if num == 0 || num == 1
  memo[num] = (steps.(num - 1) + steps.(num - 2)) % C
}
puts steps.(n)