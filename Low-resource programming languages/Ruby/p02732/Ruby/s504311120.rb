def xc2(x)
  return 0 if x <= 1
  return x*(x-1)/2
end

n=gets.chomp.to_i
x=Array.new(n,0)
a=gets.chomp.split(" ").map{|i|i.to_i; x[i] += 1}

0.upto(a.size-1) do |i|
  sum=0
  x.each do |val|
    sum += xc2(val) - xc2(a[i])
  end
  puts sum
end
