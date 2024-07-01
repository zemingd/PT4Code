n, k, q = gets.split.map(&:to_i)
ans = Array.new(n)
q.times {
  a = gets.to_i - 1
  ans[a] = ans[a].nil? ? 1 : ans[a] + 1
}
ans.each { |a| puts (k - 1 * (q - (a || 0))).positive? ? 'Yes' : 'No' }
