N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = A.sort.reverse!
M.times do
  ans[0] = ans[0] / 2
  if ans[0] < ans[1]
    n = ans.shift
    i = ans.bsearch_index {|x| x < n } || -1
    ans.insert(i, n)
  end
end
puts ans.inject(:+)
