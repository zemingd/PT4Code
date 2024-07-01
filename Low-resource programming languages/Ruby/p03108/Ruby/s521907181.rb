island,n = gets.split.map(&:to_i)
bridge = Array.new(n).map{Array.new(2,0)}
n.times{|i| bridge[i] = gets.split.map(&:to_i)}
bridge.reverse!
ans = Array.new(n+1,0)
check = Array.new(island,-1)
b_check = Array.new(n,0)
con = Array.new(n).map{Array.new(1,0)}
n.times{|i| con[i].delete_at(0)}
for i in 0..n-1
  if check[bridge[i][0]-1] == -1 && check[bridge[i][1]-1] == -1
    check[bridge[i][0]-1] = i
    check[bridge[i][1]-1] = i
    b_check[i] += 2
    con[i].push(bridge[i][0]-1)
    con[i].push(bridge[i][1]-1)
    ans[i+1] = ans[i]+1
  elsif check[bridge[i][0]-1] != -1 && check[bridge[i][1]-1] == -1
    check[bridge[i][1]-1] = check[bridge[i][0]-1]
    ans[i+1] = ans[i]+b_check[check[bridge[i][0]-1]]
    b_check[check[bridge[i][0]-1]] += 1
    con[check[bridge[i][0]-1]].push(bridge[i][1]-1)
  elsif check[bridge[i][0]-1] == -1 && check[bridge[i][1]-1] != -1
    check[bridge[i][0]-1] = check[bridge[i][1]-1]
    ans[i+1] = ans[i]+b_check[check[bridge[i][1]-1]]
    b_check[check[bridge[i][1]-1]] += 1
    con[check[bridge[i][1]-1]].push(bridge[i][0]-1)
  elsif check[bridge[i][0]-1] == check[bridge[i][1]-1]
    ans[i+1] = ans[i]
  else
    ans[i+1] = ans[i]+(b_check[check[bridge[i][0]-1]]*b_check[check[bridge[i][1]-1]])
    inst = check[bridge[i][1]-1]
    con[inst].length.times {|j| check[con[inst][j]] = check[bridge[i][0]-1]}
    con[check[bridge[i][0]-1]].push(con[inst])
    b_check[check[bridge[i][0]-1]] += b_check[check[bridge[i][1]-1]]
  end
end
for i in 2..n+1
  puts ((island * (island-1)) / 2) - ans[-i]
end
