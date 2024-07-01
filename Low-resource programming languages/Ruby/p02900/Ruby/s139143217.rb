a, b = gets.split.map(&:to_i)

divs = Array.new(0)
for i in 1..(([a,b].max)**0.5).to_i
  if a % i == 0 && b % i == 0
    divs.push(i)
    if b % (a/i) == 0
      divs.push(a/i)
    end
    if a % (b/i) == 0
      divs.push(b/i)
    end
  end
end
divs.uniq!
divs.sort!{|a,b| b <=> a}

cnt = 0
ln = divs.length
for i in 0..(ln-1)
  flag = 1
  for j in (i+1)..(ln-1)
    if divs[i].gcd(divs[j]) > 1
      flag = 0
      break
    end
  end
  cnt += 1 if flag == 1
end
puts cnt