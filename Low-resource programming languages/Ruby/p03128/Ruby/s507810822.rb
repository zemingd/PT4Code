n,m = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
num.sort!
stick = [10,2,5,5,4,5,6,3,7,6]
ans = []
check = [0,10]
for i in 0..m-1
  if check[1] >= stick[num[i]]
    check[0] = num[i]
    check[1] = stick[num[i]]
  end
end
num2 = Array.new(7, 0)
for i in 1..m**7
  count = 0
  for j in 0..6
    if num2[j] != 0
      count += stick[num[-num2[j]]]
    end
  end
  if (n - count) % check[1] == 0
    for j in 1..m
      if (stick[num[-num2[0]]] - stick[num[-j]]) % check[1] == 0 && stick[num[-num2[0]]] > stick[num[-j]]
        num2[0] = j
        count -= (stick[num[-num2[0]]] - stick[num[-j]])
      end
    end
    break
  end
  num2[0] += 1
  for j in 0..5
    if num2[j] == m+1
      num2[j] = 1
      num2[j+1] += 1
    end
  end
end
ans = []
for i in 1..7
  if num2[-i] != 0
    ans.push(num[-num2[-i]])
  end
end
if ans.length != 0 && ans[0] < check[0]
  for i in 1..((n-count)/check[1])
    ans.insert(0,check[0])
  end
else
  for i in 1..((n-count)/check[1])
    ans.push(check[0])
  end
end
puts ans.join
