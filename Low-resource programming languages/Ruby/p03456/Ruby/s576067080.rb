h,w = gets.split
h << w
h.to_i
ans Math.sqrt(h)
if ans * ans == h 
   puts "Yes"
else 
  puts "No"
end