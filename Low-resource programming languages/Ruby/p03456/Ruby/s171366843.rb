h,w = gets.chomp.split
h += w
h=h.to_i
puts h
ans  = Math.sqrt(h).to_i
if ans * ans == h 
   puts "Yes"
else 
  puts "No"
end