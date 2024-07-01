n = gets.to_i
tree = Array.new(n-1).map{Array.new(3,0)}
(n-1).times{|i| tree[i] = gets.split.map(&:to_i)}
tree.sort!
check = Array.new(n,-n)
if tree[0][2] % 2 == 0
  check[tree[0][0]-1] = 0
  check[tree[0][1]-1] = 0
else
  check[tree[0][0]-1] = 0
  check[tree[0][1]-1] = 1
end
count = 1
while check.sum < 0
  if check[tree[count][0]-1] >= 0 || check[tree[count][1]-1] >= 0
    if tree[count][2] % 2 == 0
      check[tree[count][0]-1] = check[tree[count][1]-1] if check[tree[count][0]-1] == -n
      check[tree[count][1]-1] = check[tree[count][0]-1] if check[tree[count][1]-1] == -n
    else
      check[tree[count][0]-1] = (check[tree[count][1]-1]-1).abs if check[tree[count][0]-1] == -n
      check[tree[count][1]-1] = (check[tree[count][0]-1]-1).abs if check[tree[count][1]-1] == -n
    end
  end
  count += 1
  if count >= n-1
    count = 1
  end
end
puts check.join("\r\n")
