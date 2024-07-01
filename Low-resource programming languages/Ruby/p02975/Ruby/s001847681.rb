n=gets.to_i
a=gets.split.map(&:to_i).sort
if n%3==0
  m=n/3
  x,y,z=a[0],a[m],a[2*m]
  if a[m-1]==x && a[2*m-1]==y && a[3*m-1]==z && x ^ y == z
    puts "Yes"
  else
    puts "No"
  end
else
  if a[0]==a[-1] && a[0]==0
puts "Yes"
  else
    puts "No"
  end
end