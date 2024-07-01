n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
a.sort!
bc=m.times.map{gets.split.map(&:to_i)}
bc.sort_by!{|b,c|c}
bc.reverse!

ans=0
itr=0
a.each do |ai|
  if itr<m && bc[itr][1]>ai
    ans+=bc[itr][1]
    bc[itr][0]-=1
  else
    ans+=ai
  end
  if itr<m && bc[itr][0]==0
    itr+=1
  end
end

puts ans
      