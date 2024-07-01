s=gets.chomp.to_s
res=[s]
a=[]
Q=gets.to_i
r=0
Q.times do |i|
  t=gets.chomp
  if t.length==1
    r+=1
  else
    if t[2]=="1"
      res.unshift(t[4])
    elsif t[2]=='2'
      res.push(t[4])
    end
  end
end
puts r%2==0 ? res.reverse.join : res.join