line = gets.to_i
N=line

Yes_flag=false

3.times do |i|
  if N%10==7
    Yes_flag=true
    break
  end
  cash= N/10
  N=cash
end

if Yes_flag
  puts "Yes" 
else
  puts "No"
end 