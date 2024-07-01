n, m = gets.chomp.split(' ').map(&:to_i)
as = gets.chomp.split(' ').map(&:to_i)

#          1, 2, 3, 4, 5, 6, 7, 8, 9
COST = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

def find_min_cost(list, costs)
  num = 0
  min_cost = 10
  list.each do |i|
    cost = costs[i]
    if cost <= min_cost
      num = i
      min_cost = cost
    end
  end
  [num, min_cost]
end

def find_max_num(rest, cost_hash)
  max_num = 0
  max_num_cost = 10
  cost_hash.each do |num, cost|
    if cost == rest
      max_num = num
      max_num_cost = cost
      break
    end
    if max_num == 0 && cost < rest
      max_num = num
      max_num_cost = cost
    end
  end
  [max_num, rest - max_num_cost]
end

min_cost_num, min_cost = find_min_cost(as, COST)
chars = Array.new(n / min_cost) { min_cost_num.to_s }
rest = n % min_cost

if rest > 0
  active_costs = as.reverse.map { |i| [i, COST[i]] }.to_h

  while rest > 0
    chars.shift
    rest += min_cost
    num, rest = find_max_num(rest, active_costs)
    chars << num.to_s
  end
end

puts chars.sort.reverse.join
