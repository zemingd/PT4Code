n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)
max=0
count=0
(n-1).times do |i|
  if a[i]>=a[i+1]
    count+=1
  else
    if count>max
      max=count
    end
    count=0
  end
end
if count>max
      max=count
end
puts max