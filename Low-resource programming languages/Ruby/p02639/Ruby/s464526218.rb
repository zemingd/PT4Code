x=gets.split(' ').map(&:to_i)

i=0
while i<5
  if x[i]==0
    puts i+1
  end
  i+=1
end