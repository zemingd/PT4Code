n,m=gets.chomp.split(" ").map{|s| s.to_i}
min=0
max=n
for i in 0..m-1
  l,r=gets.chomp.split(" ").map{|s| s.to_i}
  if min<=l
    min=l
  end

  if max>=r
    max=r
  end
end

if max-min+1>0
  puts max-min+1
else
  puts 0
end