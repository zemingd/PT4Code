N, M = gets.chomp.split(" ").map(&:to_i)
E = Array.new(N+1).map{Array.new}
M.times{
  a, b, c = gets.chomp.split(" ").map(&:to_i)
  E[a] << [b, c]
}

ans = Array.new(N+1)
ans[1] = 0
bef = [1]
wk = nil
(2*N).times{|i|
  nxt = []
  tmp = (i==N ? 10 ** 9 * N : 0)
  bef.each{|n|
    E[n].each{|b, c|
      if ans[b].nil? || ans[b] < ans[n] + c then
        ans[b] = ans[n] + c + tmp
        nxt << b
      end
    }
  }
  bef = nxt.uniq
  break if bef.empty?
  wk = ans[N] if i == N-1
}

if wk.nil? then
  puts ans[N]
elsif wk == ans[N] then
  puts ans[N]
else
  puts 'inf'
end
