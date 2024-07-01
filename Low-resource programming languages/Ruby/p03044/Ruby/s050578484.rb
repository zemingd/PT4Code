N = gets.to_i
h = Hash.new{|hash, key| hash[key] = []}

(N-1).times do |i|
  u, v, w = gets.split.map(&:to_i)
  h[u] = h[u].push([v,w]) # [繋がっている点 , 辺の長さ]
  h[v] = h[v].push([u,w])
end

ans_tbl = Hash.new(-1)
ans_tbl[1] = 0 # rootを1として考える。1の1からの距離は0
$stack = [[1,0]]

# dfs
loop{
  break if ($stack == [])
    nowp = $stack.pop
    nextp = h[nowp[0]]
    nextp.each{|i|
      n_point,n_len = i[0],i[1]
      if (ans_tbl[n_point] === -1)
        sum_len = nowp[1] + n_len
        ans_tbl[n_point] = sum_len
        $stack.push([n_point,sum_len])
      end
    }
}

N.times do |i|
  puts ans_tbl[i+1] % 2 === 0 ? "0" : "1"
end
# p h
# p ans_tbl