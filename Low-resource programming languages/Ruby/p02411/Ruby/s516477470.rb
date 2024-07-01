while true do
  m,f,r = gets.split.map!(& :to_i)
  break if m < 0 && f < 0 && r < 0

  sum = m + f
   
  if (m < 0 || f < 0 || sum < 30) then 
   	puts "F"
   	next

  elsif (sum >= 80) then 
   	puts "A"
   	next

  elsif (sum >= 65 && sum < 80) then
  	puts "B"
  	next

  elsif (sum >= 50 && sum < 65 || r >= 50) then
  	puts "C"
    next

  else
    puts "D"
  end

end