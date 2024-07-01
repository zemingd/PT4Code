def ketashirabe(atai)
  kaisu=0
  k=atai
  loop{
    if(k/10!=0)
      k=k/10
    kaisu+=1
    else 
      return kaisu+1
    end 
  }
end

m=gets.to_i
result=[]
dasu=[]
ha=Array.new
for a in 1..m**(1/2.0)
  if(m%a==0&&a<=m/a)
  ha<<a
  ha<<m/a
  result.push(ha)
  ha=[]
  end
end

for sa in 0..result.length-1
  if(ketashirabe(result[sa][0])>=ketashirabe(result[sa][1]))
  dasu.push(ketashirabe(result[sa][0]))
  else
    dasu.push(ketashirabe(result[sa][1]))
  end
end

puts dasu.min
