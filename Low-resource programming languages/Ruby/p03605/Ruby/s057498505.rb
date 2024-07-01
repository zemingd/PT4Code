N = gets.to_s
split = N.split("")
if N[0].to_i == 9 or N[1].to_i == 9 then
  puts "Yes"
else
  puts "No"
end