MOD_SIZE = 1_000_000_007

N, M = gets.chomp.split(' ').map(&:to_i)
brokens = (M.times.map { gets.to_i }).uniq.sort
brokens.unshift(-1)
brokens.push(N+1)

def combination(n,k)
  k=n-k if 2*k > n
  return 1 if k == 0
  ((n-k+1)..n).reduce(&:*)/((1..k).reduce(&:*))
end

def count_step_patterns(steps)
  0.upto(steps/2).map { |skips| 
    combination(steps - skips, skips)
  }.inject(&:+)
end

cannot_reach = brokens.inject(nil) { |before, value|
  next value if before.nil?
  break nil if before + 1 == value
  value
}.nil?

if cannot_reach
  puts 0
else
  splitted = 0.upto(brokens.size-2).map { |i| brokens[i+1] - brokens[i] - 2 }
  puts splitted.inject(1) { |sum, steps| sum * count_step_patterns(steps) % MOD_SIZE }
end

