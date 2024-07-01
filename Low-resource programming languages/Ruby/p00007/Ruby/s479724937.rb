a=100000
gets.to_i.times{a=a*105/100;a=(a/1000+1)*1000 if a%1000!=0;}
puts a