require 'set'
A, B, C, D, E, F = gets.split.map(&:to_i)

def water_comb(a, b, f)
  comb = Set.new()
  comb = comb.union(Set.new([a]).union(water_comb(a, b, f - a))) if f >= a
  comb = comb.union(Set.new([b]).union(water_comb(a, b, f - b))) if f >= b
  comb
end

$suger_memo = {}
def max_suger(c, d, f)
  return $suger_memo[f] if $suger_memo[f]
  max = 0
  if f >= c
    a = c + max_suger(c, d, f - c)
    max = [max, a].max
  end
  if f >= d
    a = d + max_suger(c, d, f - d)
    max = [max, a].max
  end
  $suger_memo[f] = max
end

weight = 0
suger_weight = 0
percent = 0
water_comb(A * 100, B * 100, F).to_a.each do |w|
  rest = F - w
  f = w / 100 * E
  s = max_suger(C, D, [rest, f].min)
  next if w == 0
  next if w == 0 && s == 0
  x = (100.0 * s) / (w + s)
  if x >= percent
    percent = x
    weight = w + s
    suger_weight = s
  end
end
puts "#{weight} #{suger_weight}"
