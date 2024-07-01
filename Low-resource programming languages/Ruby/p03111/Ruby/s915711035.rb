INF = 10 ** 10

$memo = {}

def to_key(l)
  l.sort.join('_')
end

def calc_cost(a, b, c, l)
  used = {}
  cost = 0
  [a, b, c].each do |v|
    min_cost = INF
    used_index = nil
    l.each_with_index do |s, i|
      if (s - v).abs < min_cost && !used[i]
        min_cost = (s - v).abs
        used_index = i
      end
    end
    cost += min_cost
    used[used_index] = true
  end
  cost
end

def synthetic_kadomatsu(n, a, b, c, l)
  key = to_key(l)
  return $memo[key] if $memo[key]
  cost = (n - l.size) * 10 + calc_cost(a, b, c, l)
  return 0 if cost == 0
  return cost if l.size == 3

  0.upto(l.size - 1) do |i|
    l1 = l.dup
    l1.delete_at(i)
    0.upto(l1.size - 1) do |j|
      l2 =  l1.dup
      l2[j] += l[i]
      cost = [cost, synthetic_kadomatsu(n, a, b, c, l2)].min
    end
  end
  $memo[key] = cost
end

n, a, b, c = gets.split.map(&:to_i)
l = []
n.times { l << gets.to_i }

puts synthetic_kadomatsu(n, a, b, c, l)
