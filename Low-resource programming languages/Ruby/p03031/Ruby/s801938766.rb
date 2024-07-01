n = gets.split.map(&:to_i)
switch = Array.new(n[1]).map{Array.new(n[0],0)}
for i in 0..n[1]-1
  inst = gets.split.map(&:to_i)
  for j in 1..inst.length-1
    switch[i][inst[j]-1] = 1
  end
end
count = gets.split.map(&:to_i)
check = Array.new(n[0],0)
ans = 0
for i in 1..2**n[0]
  ok = 0
  for j in 0..n[1]-1
    result = 0
    for k in 0..n[0]-1
      result += 1 if switch[j][k] == 1 && check[k] == 1
    end
    ok += 1 if result % 2 == count[j]
  end
  ans += 1 if ok == n[1]
  check[0] += 1
  for j in 0..n[0]-2
    if check[j] == 2
      check[j] = 0
      check[j+1] += 1
    end
  end
end
puts ans
