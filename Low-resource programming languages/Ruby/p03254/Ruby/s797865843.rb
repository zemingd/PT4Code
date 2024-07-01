n,x=gets.split.map &:to_i
a=gets.split.map &:to_i
a.sort!

if x==a.inject(:+)
  puts n
elsif x<a[0]
  puts 0
else
  cnt,sum=0,0
  while x>sum
    sum+=a[cnt]
    cnt+=1
  end
  puts cnt
end
