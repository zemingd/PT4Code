n, m = gets.chomp.split(' ').map(&:to_i)
list = gets.chomp.split(' ').map(&:to_i).sort.reverse

#          1, 2, 3, 4, 5, 6, 7, 8, 9
COST = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

MIN = -1_000_000_000

memo = Array.new(n / 2 + 1) { MIN }
memo[0] = 0
cost_map = list.map { |i| [i, COST[i]] }.to_h

def dp(n, cost_map, memo)
  ans = cost_map.values.map do |cost|
    x = n - cost
    next MIN if x < 0
    memo[x] + 1
  end.max
  memo[n] = ans
end

2.upto(n).each do |i|
  dp(i, cost_map, memo)
end

chars = []
x = n
memo[n].downto(1).each do |i|
  list.each do |c|
    exp_digit = memo[x] - 1
    co = x - cost_map[c]
    next if co < 0
    if memo[co] == exp_digit
      chars << c
      x -= cost_map[c]
      break
    end
  end
end

puts chars.join
