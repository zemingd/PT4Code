n,d = gets.chomp.split.collect{ |item| item.to_i}
xlist = Array.new()
n.times do |ni|
  xlist[ni] = gets.chomp.split.collect{ |item| item.to_i}
end

def calc_dis(xi,xj)
  result = 0
  xi.size.times do |i|
    result += (xi[i] - xj[i]) **2
  end
  if((Math.sqrt(result)) % 1 == 0)
    return 1
  else
    return 0
  end
end

pair = 0
n.times do |ni|
  (ni+1).upto(n-1) do |nii|
    pair += calc_dis(xlist[ni],xlist[nii])
  end
end

puts pair
