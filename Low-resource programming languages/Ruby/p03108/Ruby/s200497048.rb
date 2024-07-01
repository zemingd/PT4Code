island,n = gets.split.map(&:to_i)
bridge = Array.new(n).map{Array.new(2,0)}
n.times{|i| bridge[i] = gets.split.map(&:to_i)}
bridge.reverse!
ans = Array.new(n+1,0)
check = Array.new(island,-1)
b_check = Array.new(n,0)
for i in 0..n-1
  if check[bridge[i][0]-1] == -1 && check[bridge[i][1]-1] == -1
    check[bridge[i][0]-1] = i
    check[bridge[i][1]-1] = i
    b_check[i] += 2
    ans[i+1] = ans[i]+1
  elsif check[bridge[i][0]-1] != -1 && check[bridge[i][1]-1] == -1
    check[bridge[i][1]-1] = check[bridge[i][0]-1]
    ans[i+1] = ans[i]+b_check[check[bridge[i][0]-1]]
    b_check[check[bridge[i][0]-1]] += 1
  elsif check[bridge[i][0]-1] == -1 && check[bridge[i][1]-1] != -1
    check[bridge[i][0]-1] = check[bridge[i][1]-1]
    ans[i+1] = ans[i]+b_check[check[bridge[i][1]-1]]
    b_check[check[bridge[i][1]-1]] += 1
  elsif check[bridge[i][0]-1] == check[bridge[i][1]-1]
    ans[i+1] = ans[i]
  else
    ans[i+1] = ans[i]+(b_check[check[bridge[i][0]-1]]*b_check[check[bridge[i][1]-1]])
    inst = check[bridge[i][1]-1]
    b_check[check[bridge[i][0]-1]] += b_check[check[bridge[i][1]-1]]
    for j in 0..island-1
      check[j] = check[bridge[i][0]-1] if check[j] == inst
    end
  end
end
for i in 2..n+1
  puts ((island * (island-1)) / 2) - ans[-i]
end
