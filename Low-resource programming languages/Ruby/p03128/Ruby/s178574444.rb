N, M = gets.split.map(&:to_i)
COSTS = [0,2,5,5,4,5,6,3,7,6]
A = gets.split.map(&:to_i).sort_by {|a| COSTS[a]}

MIN = A.map do |a|
  COSTS[a]
end.min

def solve(num, match)
  if match <= 0
    return num
  end

  max = 0
  max_digit = (match - COSTS[A.first]) / COSTS[A.first]
  # p "max_digit: #{max_digit}"

  used = {}
  A.each do |a|
    c = match - COSTS[a]
    if c >= 0 && used[c].nil? && c / MIN >= max_digit
      # p "choose: #{a}"
      used[c] = true
      n = solve(num * 10 + a, c)
      if max < n
        max = n
      end
    end
  end

  return max
end

p solve(0, N)
