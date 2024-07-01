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
num2 = Array.new(8, 0)
for i in 1..m**9
  count = 0
  for j in 0..7
    if num2[j] != 0
      count += stick[num[-num2[j]]]
    end
  end
  if (n - count) % check[1] == 0
    for k in 1..8
      if num2[-k] != 0
        for j in 1..m
          if (stick[num[-num2[-k]]] - stick[num[-j]]) % check[1] == 0 && stick[num[-num2[-k]]] > stick[num[-j]]
            num2[-k] = j
            count -= (stick[num[-num2[-k]]] - stick[num[-j]])
          end
        end
      end
    end
    break
  end
  num2[0] += 1
  for j in 0..6
    if num2[j] == m+1
      num2[j] = 1
      num2[j+1] += 1
    end
  end
end
ans = []
for i in 1..8
  if num2[-i] != 0
    ans.push(num[-num2[-i]])
  end
end
for i in 1..((n-count)/check[1])
  ans.push(check[0])
end
ans.sort!
ans.reverse!
puts ans.join
