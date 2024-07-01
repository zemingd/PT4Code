require 'prime'
num = gets.to_i

while true  do
    if Prime.prime?(num) then
        break;
    end
    num+=1
end
p num