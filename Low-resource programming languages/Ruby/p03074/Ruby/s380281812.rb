n,k = $stdin.gets.split.map(&:to_i)
s = $stdin.gets.chomp.split("").map(&:to_i)
ichi = s[0]
ary=[]
result = []
now = s[0]
count = 0
 
n.times do |i|
  if now != s[i]
    ary.push(count)
    count = 0
  end
  count += 1
  now = s[i]
end
 
ary.push(count)
 
if ichi == 0
  sum = 0
  (k*2).times do |i|
	if !ary[i].nil?
      sum += ary[i]
    end
  end
  result.push(sum)
end
 
ary.size.times do |i|
  if i == 0
    sum = 0
    i = i * 2 + 1 - ichi
    (k*2+1).times do |j|
      if !ary[i+j].nil?
        sum += ary[i+j]
      else
        break
      end
    end
    result.push(sum)
    now = sum
  else
    i = i * 2 + 1 - ichi
    now -= ary[i-2] + ary[i-1]
    if !ary[i+k*2].nil?
      now += ary[i+k*2] + ary[i+k*2-1]
    else
      if !ary[i+k*2-1].nil?
        ary += ary[i+k*2-1]
      end
      break
    end
    result.push(now)
  end
end
 
puts result.max 
