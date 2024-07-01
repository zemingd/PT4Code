l,r=gets.chomp.split(" ").map{|s| s.to_i}
if (r/673)-((l-1)/673)>=1 && (r/3)-((l-1)/3)>=1
  puts 0
else
  a=[]
  for i in l..r
    a[i-l]=i%2019
  end
  a.sort!
  puts (a[0]*a[1])%2019
end