def calc_ev(n)
  ev = 0
  1.upto(n){|i| ev += i / n.to_f }
  ev
end

n, k = gets.split.map(&:to_i)
dice = gets.split.map(&:to_i)
k_dice_sum = []
(n-k+1).times do |t|
  k_dice_sum << dice[t..t+k-1].inject(:+)
end

idx = k_dice_sum.index(k_dice_sum.max)
result = 0
k.times do
  result += calc_ev(dice[idx])
  idx += 1
end
puts result