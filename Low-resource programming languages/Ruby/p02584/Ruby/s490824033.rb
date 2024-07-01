x,k,d=gets.split.map(&:to_i)
if x.abs>=k*d
  puts x.abs-k*d
elsif x==0
  if k%2==0
    puts 0
  else
    puts d
  end
else
  k-=x/d
  x=x.abs
  x-=d*(x/d)
  if k%2==0
    puts x
  else
    puts (x-d).abs
  end
end
