N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = A.sort.reverse!
tmp = []
M.times do
  if tmp[0] == nil
    tmp = [ans.shift/2]
  elsif ans[0] == nil
    ans = tmp
    tmp = [ans.shift/2]
  elsif tmp[0] < ans[0]
    n = ans.shift / 2
    i = tmp.bsearch_index {|x| x < n } || -1
    tmp.insert(i, n)
  else
    tmp[0] = tmp[0] / 2
  end
end
puts (ans+tmp).inject(:+)
