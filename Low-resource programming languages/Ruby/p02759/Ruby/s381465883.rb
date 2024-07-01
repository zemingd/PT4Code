data = gets.to_i
 
if data % 2 == 0 then
  page = data / 2
else
  page = data / 2 + 0.5
end
 
puts(page)