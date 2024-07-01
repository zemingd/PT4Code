
n,m = gets.chomp.split(" ").map{|i|i=i.to_i}
a = gets.chomp.split(" ").map{|i|i=i.to_i}

a.sort!



m.times do|i|
  tmp=a[a.length-1]/2
  
  flag = -1
  a.length.times do|i|
    if a[i]>=tmp then
      flag = i
      break
    end
  end
  if flag!=-1 then
    a.insert(flag, tmp)
  else
    a.insert(a.length-1,tmp)
  end
    a.delete_at(a.length-1)
end

all=0
a.each do|elm|
  all += elm
end
puts all