l,r=gets.split.map(&:to_i)

if l%2019==0 || r%2019==0 
  puts 0
elsif 1+l/2019-l/2019.to_f < r/2019.to_f-r/2019
  puts r*(r-1)%2019
else
  puts l*(l+1)%2019
end