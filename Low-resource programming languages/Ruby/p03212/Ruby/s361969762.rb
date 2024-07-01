nu = gets.to_i
nu2 = nu.to_s
le = nu2.length
inst1 = Array.new(le, 0)
ans = []
for i in 0..(4**le) - 1
  inst1[0] += 1
  for j in 0..le - 2
    if inst1[j] == 4
      inst1[j + 1] += 1
      inst1[j] = 1
    else
      break
    end
  end
  if inst1[-1] == 4
    break
  end
  count3 = 0
  count5 = 0
  count7 = 0
  for j in 0..le - 1
    if inst1[j] == 1
      count3 += 1
    elsif inst1[j] == 2
      count5 += 1
    elsif inst1[j] == 3
      count7 += 1
    end
  end
  count = 0
  if count3 >= 1 && count5 >= 1 && count7 >= 1
    for j in 0..le - 1
      if inst1[j] == 1
        count += 3*(10**j)
      elsif inst1[j] == 2
        count += 5*(10**j)
      elsif inst1[j] == 3
        count += 7*(10**j)
      end
    end
    ans.push(count)
  end

end

leng = ans.length
for i in 0..leng - 1
  if ans[i] > nu
    puts i
    exit
  end
end
puts leng
