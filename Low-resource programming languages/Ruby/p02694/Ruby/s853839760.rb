x=gets.to_i

deposit=100.to_i
passed_years=0

while deposit<x do
    deposit=deposit.floor*1.01
    passed_years+=1
end

puts passed_years