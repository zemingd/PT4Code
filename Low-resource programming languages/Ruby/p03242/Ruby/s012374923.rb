n = gets.split("")

num = n.map { |n123| n123.to_i }

sum = ""

for i in num do
 if i == 9 then
  sum = sum + "1"
 elsif i == 1 then
  sum = sum + "9"
 end
end

sum = sum.to_i

puts sum