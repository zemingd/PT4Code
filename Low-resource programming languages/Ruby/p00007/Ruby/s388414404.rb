a= 10**5
gets.to_i.times{
  a*=1.05
  if a%1000!=0
    a-=a%1000
    a+=1000
  end
}
puts a.to_i