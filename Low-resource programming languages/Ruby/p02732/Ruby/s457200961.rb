def xc2(x)
  return 0 if x <= 1
  return x*(x-1)/2
end

n=gets.chomp.to_i
x=Array.new(n,0)
a=gets.chomp.split(" ").map{|i|i.to_i}
a.each{|i|x[i] += 1}

y=x.map{|i|xc2(i)}

sum=0
y.map{|i|sum += i}

0.upto(n-1) do |k|
   puts sum - (1*y[a[k]] - xc2(x[a[k]]-1))
end
