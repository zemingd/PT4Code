n,x=gets.split.map &:to_i
a=gets.split.map &:to_i
a.sort!

if x==a.inject(:+)
  puts n
elsif x<a[0]
  puts 0
elsif x>a.inject(:+)
  puts n-1
else
  cnt,sum=0,0
  while x>sum
    sum+=a[cnt]
    cnt+=1
    puts "#{sum},#{cnt}"
  end
  puts cnt
end
