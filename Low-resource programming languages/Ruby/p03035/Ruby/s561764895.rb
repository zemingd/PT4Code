a,b = gets.split.map(&:to_i)

if a =< 5 
    fee = 0
elsif a < 13 
    fee = b/2
else
    fee = b
end

puts fee