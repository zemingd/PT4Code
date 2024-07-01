N, M = gets.split.map(&:to_i)
Hs = [nil] + gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

@g = ABs.each_with_object(Array.new(N + 1) {[]}){|(a, b), o| o[a] << b; o[b] << a}

def dfs(u, v)
  (@g[v] - [u]).each do |w|
    return false unless Hs[v] > Hs[w]
    dfs(v, w)
  end
  return true
end

puts [*1 .. N].count{|n| dfs(nil, n)}