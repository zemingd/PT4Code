input=gets.chomp(" ")
if input[0].to_i<=5 then 
print "0"
elsif input[0].to_i<= 12 then
print input[1].to_i/2
else
print input[1].to_i
end