x = gets.to_i

savings = 100
  
year = 0
  
until x <= savings do 
savings += savings/100
year += 1
end 

puts(year)