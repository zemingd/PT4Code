x,k,d=gets.split.map(&:to_i)
if x.abs>=k*d&&x!=0
  puts (x-x/x.abs*k*d).to_i.abs
elsif x==0
  if k%2==0
    puts 0
  else
    puts d
  end
else
  k-=(x/d).floor
  x-=d*((x/d).floor)*((x/x.abs).to_i)
  if k%2==0
    puts x.abs
  else
    if x!=0
      puts (x-d*((x/x.abs).to_i)).abs
    else
      puts d.abs
    end
  end
end
