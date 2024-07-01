n = gets.chomp.to_i
alist = gets.chomp.split.collect{ |item| item.to_i}
ballList = Array.new(n)
result = Array.new()
n.times do |ni|
  ballList[ni] = 0
end
def set_ball(zo,ni,ballList,n)
  data_r = 0
  data_b = 0
  if ((ni+1)*2) > n
    data_r = zo
    data_b = zo
  else
    
    if ballList[2*(ni+1)-1] == zo
      data_r = 0
      data_b = zo
    else
      data_r = 1
      data_b = zo == 1 ? 0 : 1
    end
  end
  return data_r,data_b
end

(n-1).downto(0) do |ni|
  zeroOne = alist[ni]
  data_r,data_b = set_ball(zeroOne,ni,ballList,n)
  ballList[ni] = data_b
  result.unshift(ni+1) if (data_r == 1)
end


  puts result.size
  puts result.join(" ")
