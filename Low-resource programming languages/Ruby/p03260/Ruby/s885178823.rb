n = gets.to_i
array = n.times.map{gets.chomp}
if array != array.uniq
  puts "No"
else
  brray = array.push("0")
  i=0
  while brray[i+1].slice(0) == brray[i].slice(brray[i].length-1)
    i+=1
  end
  if i == n-1
    puts "Yes"
  else
    puts "No"
  end
end
