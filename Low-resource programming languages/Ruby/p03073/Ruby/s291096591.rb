array = gets.split("").map(&:to_i)
n=array.length
if n ==1
  puts 0
else
  i=0
  even=[]
  odd=[]
  while i<n
    if i%2 == 0
      even.push(array[i])
    else
      odd.push(array[i])
    end
    i+=1
  end
  eb=even.inject(:+)
  ob=odd.inject(:+)
  ew=even.length - eb
  ow=odd.length - ob
  if ew+ob > ow+eb
    puts ow+eb
  else
    puts ew+ob
  end
end