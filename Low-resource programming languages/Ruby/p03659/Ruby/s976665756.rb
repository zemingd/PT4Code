N = gets.to_i
A = gets.split(' ').map(&:to_i)

memo = Hash.new { |h, k| h[k] = {} }

def calc_by_range(i, j, memo)
  m = memo[i][j]
  if m.nil?
    (i == j ? A[i] : calc_by_range(i, j - 1, memo) + A[j]).tap do |s|
      memo[i][j] = s
    end
  else
    m
  end
end

def calc(i, memo)
  (calc_by_range(0, i - 1, memo) - calc_by_range(i, N - 1, memo)).abs
end

puts 1.upto(N - 1).map { |i| calc(i, memo) }.min