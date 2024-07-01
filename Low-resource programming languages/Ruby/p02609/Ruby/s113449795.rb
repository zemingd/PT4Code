n = gets.chomp.to_i
x = gets.chomp.split('')
arr = []
i = 0
while i < n
  if x[i] == "0"
    x[i] = "1"
  else
    x[i] = "0"
  end
  arr << [x.count("1"),x.join.to_i(2)]
  if x[i] == "0"
    x[i] = "1"
  else
    x[i] = "0"
  end
  i += 1
end
# p arr

# 計算
ans = []
i = 0
while i < n
  c = 0
  while true
    # p "before arr[i][1]:#{arr[i][1]}"
    arr[i][1] = arr[i][1]%arr[i][0] # あまり
    # p "after arr[i][1]:#{arr[i][1]}"
    arr[i][0] = arr[i][1].to_s(2).count("1")
    # p "============================"
    # p arr[i][1]
    # p arr[i][1].to_s(2)
    # p arr[i][1].to_s(2).count("1")
    # p "============================"
    # p "arr[i][0]:#{arr[i][0]}"
    c += 1
    if arr[i][1] == 0
      ans << c
      break
    end
  end
  i += 1
end
puts ans