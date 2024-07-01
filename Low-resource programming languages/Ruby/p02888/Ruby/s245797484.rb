n = gets.to_i
d = gets.strip.split.map{|e|e.to_i}
co = 0
d.each_with_index do |e,i|
  a = e
  j=i+1
  while(j<n-1)
    k=j+1
  	while(k<n)
      b=d[j]
      c=d[k]
      co+=1 if a+b>c and b+c>a and a+c>b
      k+=1
    end
    j+=1
  end
end
p co