x = gets.to_i

savings = 100
  
year = 0
  
until x <= savings do 
savings = (savings * 1.01).floor 
year += 1
end 

puts(year)