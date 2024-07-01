n = gets.chomp.to_i
llist = gets.chomp.split.collect{ |item| item.to_i}

llist.sort!
ldata = [0]
be = 0
n.times do |ni|
  nowl = llist[ni]
  if be == nowl
    ldata[nowl] += 1
  else
    (be+1).upto(nowl) do |nii|
      ldata[nii] = ldata[be]
    end
    ldata[nowl] += 1
  end
  be = nowl
end

result = 0
a = 0
b = 0
c = 0
0.upto(n-3) do |ai|
  a = llist[ai]
  (ai+1).upto(n-2) do |bi|
    b = llist[bi]
    cmin = b-a
    cmax = a+b
    maxC = ldata[cmax-1] ? ldata[cmax-1] : ldata[-1]
    maxC -= (bi+1)
    result += maxC 
  end
end
puts result
