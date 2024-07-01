def isDivisor?(a, b, i)
  a % i == 0 && b % i == 0
end

def getDivisors(a, b)
  d = []
  for i in 1..([a, b].min)
    if isDivisor?(a, b, i)
      d.push(i)
    end
  end
  return d
end

def isDisjoint?(a, b)
  cnt = 0
  for i in 1..([a, b].min)
    if isDivisor?(a, b, i)
      cnt += 1
    end
  end
  if cnt == 1
    return true
  else
    return false
  end
end

a,b = gets.chomp.split(' ').map(&:to_i)
d = getDivisors(a, b)
disjoint = []
count = 0


for i in 0..(d.length - 1)
  flag = 0
  for k in 0..(disjoint.length - 1)
    if !isDisjoint?(d[i], disjoint[k])
      flag = 1
    end
  end
  if flag == 0
    disjoint.push(d[i])
  end
end
p disjoint.length
