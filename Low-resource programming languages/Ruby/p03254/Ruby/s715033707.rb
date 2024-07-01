n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort

if x==a.inject(:+)
  puts n
elsif x<a[0]
  puts 0
else
  cnt,sum=0,0
  a.each do |i|
    sum+=i
    cnt+=1
    if (x < sum) ||(n==cnt)
      cnt -=1
      puts "#{sum},#{cnt}"
      break
    end
    puts "#{sum},#{a[cnt]},#{cnt}"
  end
  puts cnt
end