n = gets.to_i
datas = gets.split("")
min = 1000000
for leader in 0..(datas.size-1)
  sum = 0
  #端っこの場合
  if leader == 0
    sum += 0
  else
    for left in 0..(leader-1)
      if datas[left] == "W"
        sum += 1
      end
    end
  end

  if leader == (datas.size-1)
    sum += 0
  else
    for right in (leader+1..(datas.size-1))
      if datas[right] == "E"
        sum += 1
      end
    end
  end
  if min > sum
    min = sum
  end
end

puts min.to_s