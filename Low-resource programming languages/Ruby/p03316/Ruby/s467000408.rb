n = gets.strip
sum = n.split('').inject(0){|sum, i| sum + i.to_i } 
if n.to_i % sum == 0
    p "Yes"
else
    p "No"
end