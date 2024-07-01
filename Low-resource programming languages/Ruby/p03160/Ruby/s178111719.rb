@N = gets.chop.to_i
@h = gets.chop.split(' ').map(&:to_i).unshift(0).push(0)

@total_costs = []

def jump(from, step, paid_cost)
  # ジャンプ後の状態
  now = from + step
  paid_cost += (@h[from] - @h[now]).abs

  # 自身の位置によって次のアクションを分岐
  if now == @N
    @total_costs << paid_cost
  elsif now < @N
    jump(now, 1, paid_cost)
    jump(now, 2, paid_cost)
  end
end

jump(1, 1, 0)
jump(1, 2, 0)

p @total_costs.min