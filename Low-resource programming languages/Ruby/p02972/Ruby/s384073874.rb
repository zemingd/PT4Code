n = gets.chomp.to_i
alist = gets.chomp.split.collect{ |item| item.to_i}
ballList = Array.new(n)
result = Array.new()
n.times do |ni|
  ballList[ni] = false
end
def set_ball(zo,ni,ballList,n)
  data_r = 0
  data_b = 0
  check = true
  clist = []
  2.upto(n) do |nii|
    checkn = (nii*(ni+1))
    break if checkn > n
    clist.push(ballList[checkn-1])
  end
  clist.uniq!
  if clist == []
    data_r = zo
    data_b = zo
  elsif clist.size == 1
    if ballList[2*(ni+1)-1] == zo
      data_r = 0
      data_b = zo
    else
      data_r = 1
      data_b = zo == 1 ? 0 : 1
    end
  else
    data_r = false
  end
  return data_r,data_b
end

er = false
(n-1).downto(0) do |ni|
  zeroOne = alist[ni]
  data_r,data_b = set_ball(zeroOne,ni,ballList,n)
  ballList[ni] = data_b
  result.unshift(ni+1) if (data_r == 1)
  if data_r == false
    er = true
    break
  end
end

if er
  puts -1
else
  puts result.size
  puts result.join(" ")
end
