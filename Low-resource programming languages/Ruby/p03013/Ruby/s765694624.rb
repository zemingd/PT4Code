MOD = 1_000_000_007
N, M = gets.split.map(&:to_i)

breaked_steps = M.times.map { gets.to_i }.group_by(&:itself)
step_costs = Array.new(N + 10)
step_costs[0] = 1

(1..N).each do |i|
  if breaked_steps[i]
    step_costs[i] = 0
  else
    step_costs[i] = step_costs[i - 1] + step_costs[i - 2]
  end
end

p step_costs[N] % MOD