a,v=gets.split.map(&:to_i)
b,w=gets.split.map(&:to_i)
t=gets.to_i
if a<b
  if (b-a)*(b+w*t-a-v*t)<=0
    puts "YES"
  else
    puts "NO"
  end
else
  if (a-b)*(a-v*t-b+w*t)<=0
    puts "YES"
  else
    puts "NO"
  end
end

