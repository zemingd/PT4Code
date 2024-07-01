Yes_flag=false

gets.each_char do |i|
  if i=="7"
    Yes_flag=true
    break
  end
end

if Yes_flag
  puts "Yes" 
else
  puts "No"
end 
