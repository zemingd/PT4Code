n,*a=`dd`.split.map(&:to_i)
b=a.sort
c=0
n.times do |i|
  c+=1 if a[i]!=b[i]
  if c>2
    puts 'NO'
    exit
  end
end
puts 'YES'
