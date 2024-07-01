n,m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
uses = [nil,2,5,5,4,5,6,3,7,6]

memo = [{}] # memo[桁][使用本数] = 値
as.each do |a|
  memo[0][uses[a]] = a
end

result = -1
1.upto(10e4) do |digit|
  memo[digit] = {}
  memo[digit-1].each do |cost, value|
    as.each do |a|
      next_value = (a * 10 ** (digit)) + value
      next_cost = uses[a] + cost
      if next_cost > n
        next
      elsif next_cost == n
        result = [result, next_value].max
        next
      elsif memo[digit][next_cost].nil? || next_value > memo[digit][next_cost]
        memo[digit][next_cost] = next_value
      end
    end
  end
  break if memo[digit].size == 0
  reduced_memo = {}
  memo[digit].keys.sort[0, 10].each do |cost|
    reduced_memo[cost] = memo[digit][cost]
  end
  memo[digit] = reduced_memo
end
puts result
