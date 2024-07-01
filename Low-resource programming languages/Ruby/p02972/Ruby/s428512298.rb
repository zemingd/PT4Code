N = gets.to_i
a_list = gets.split.map(&:to_i)

ans = Array.new(N) { 0 }
N.downto(1) do |i|
  sum = 0
  ii = i
  while ii <= N
    sum += ans[ii - 1]
    ii += i
  end
  ans[i - 1] = (a_list[i - 1] - (sum % 2)).abs
end
puts ans.count { |n| n == 1 }
ids = ans.map.with_index { |a, i| [a, i] }.select do |a, i|
  a == 1
end.map { |_, i| i + 1 }
puts ids.join(' ')
