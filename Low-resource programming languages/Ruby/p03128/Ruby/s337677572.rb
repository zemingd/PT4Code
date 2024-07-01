MAP = {
  1 => 2,
  2 => 5,
  3 => 5,
  4 => 4,
  5 => 5,
  6 => 6,
  7 => 3,
  8 => 7,
  9 => 6,
}

def match_matching(n, nums)
  cost_to_num = {}
  nums.each { |n| cost_to_num[MAP[n]] = n }
  costs = cost_to_num.keys.sort

  counter = Hash.new { |h, k| h[k] = 0 }
  f = -> (i, rem) {
    if i == costs.size
      return rem.zero?
    end

    d = rem / costs[i]
    r = rem % costs[i]
    d.downto(0) do |j|
      counter[costs[i]] = j
      ret = f.call(i + 1, r + costs[i] * (d - j))
      return ret if ret
    end
    false
  }
  f.call(0, n)

  ret = ''
  cost_to_num.values.sort.reverse_each do |n|
    ret += n.to_s * counter[MAP[n]]
  end
  ret
end

n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

puts match_matching(n, nums.sort)
