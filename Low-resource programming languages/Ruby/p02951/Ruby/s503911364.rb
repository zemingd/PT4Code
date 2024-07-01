input = gets.split().map{|i| i.to_i}

a = input[0]
b = input[1]
c = input[2]

ans = c-(a-b)
if ans < 0
 puts 0
else
 puts ans
end