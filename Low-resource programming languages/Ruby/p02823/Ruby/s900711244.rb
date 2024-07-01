io = STDIN
n,a,b=io.gets.split.map(&:to_i)
near=[a-1,n-b].min
far=[a-1,n-b].max
if (b-a).even?
  puts (b-a)/2
else
  if (b-a)==(near*2+1)
    puts (b-a)
  elsif (b-a)>(near*2+1)
    puts ((b-a)-(near*2+1))/2+(near*2+1)
  else
    puts [b-1,n-a,near+1+((b-a-1)/2)].min
  end
end
