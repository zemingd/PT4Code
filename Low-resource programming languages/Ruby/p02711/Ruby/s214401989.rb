num = gets.chomp.split("")
count = 0
num.each {|element| if element == "7" then count +=1 else count += 0 end }

if count >= 1  then 
  puts "Yes" 
else  puts "No" 

end