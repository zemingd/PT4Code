require 'prime'
x=gets.to_i

while x>=2 do
    if Prime.prime?(x)
        puts x
        break
    end
    x+=1
end