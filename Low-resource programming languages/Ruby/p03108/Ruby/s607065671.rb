island,n = gets.split.map(&:to_i)
bridge = Array.new(n).map{Array.new(2,0)}
n.times{|i| bridge[i] = gets.split.map(&:to_i)}
bridge.reverse!
ans = Array.new(n+1,0)
check = Array.new(island,-1)
con = Array.new(n).map{Array.new}
for i in 0..n-1
  if check[bridge[i][0]-1] != -1 && check[bridge[i][1]-1] != -1 && check[bridge[i][0]-1] != check[bridge[i][1]-1]
    ans[i+1] = ans[i]+(con[check[bridge[i][0]-1]].length*con[check[bridge[i][1]-1]].length)
    inst = check[bridge[i][1]-1]
    for j in 0..con[inst].length-1
      con[check[bridge[i][0]-1]].push(con[inst][j])
      check[con[inst][j]] = check[bridge[i][0]-1]
    end
  elsif check[bridge[i][0]-1] != -1 && check[bridge[i][1]-1] == -1
    check[bridge[i][1]-1] = check[bridge[i][0]-1]
    ans[i+1] = ans[i]+con[check[bridge[i][0]-1]].length
    con[check[bridge[i][0]-1]].push(bridge[i][1]-1)
  elsif check[bridge[i][0]-1] == -1 && check[bridge[i][1]-1] != -1
    check[bridge[i][0]-1] = check[bridge[i][1]-1]
    ans[i+1] = ans[i]+con[check[bridge[i][1]-1]].length
    con[check[bridge[i][1]-1]].push(bridge[i][0]-1)
  elsif check[bridge[i][0]-1] == -1 && check[bridge[i][1]-1] == -1
    check[bridge[i][0]-1] = i
    check[bridge[i][1]-1] = i
    con[i].push(bridge[i][0]-1)
    con[i].push(bridge[i][1]-1)
    ans[i+1] = ans[i]+1
  elsif check[bridge[i][0]-1] == check[bridge[i][1]-1]
    ans[i+1] = ans[i]
  end
end
2.upto(n+1){|i| puts ((island * (island-1)) / 2) - ans[-i]}