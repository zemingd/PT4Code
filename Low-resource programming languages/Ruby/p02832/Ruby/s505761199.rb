n=gets.to_i
a=gets.split(' ').map(&:to_i)

smash=0
tugi = 1

for i in 0..n-1
  if a[i]==tugi
    tugi+=1
  else
    smash+=1
  end
end

if tugi==1
  puts -1
else
  puts smash
end
