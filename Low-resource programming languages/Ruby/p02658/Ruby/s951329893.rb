n=gets.to_i
res = 1
a=gets.split.sort.each do |i| 
  res*=i.to_i
  if res==0
    puts 0
    exit
  end
  if res>10**18
    puts -1
    exit 
  end
end
puts res