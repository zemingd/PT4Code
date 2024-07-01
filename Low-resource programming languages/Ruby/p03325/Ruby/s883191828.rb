count=gets.to_i
line=gets.chomp.split(" ").map(&:to_i)
sum=0
line.each do |l|
  tmp=0
  while l %2==0
    tmp +=1
    l /= 2
  end
  sum +=tmp
end  
puts sum