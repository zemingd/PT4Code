n=gets.chomp.to_s
m=gets.chomp.to_s
count=0
for i in 1..3
  if n[i]==m[i]
    count=count+1
  end
end
puts count