n=gets.chomp.to_i
a=gets.chomp.split(" ").map{|s| s.to_i}
j=0
for i in 0..n-1
  if a[i]==j+1
    j+=1
  end
end

if j==0
  puts -1
  exit
end

puts n-j
