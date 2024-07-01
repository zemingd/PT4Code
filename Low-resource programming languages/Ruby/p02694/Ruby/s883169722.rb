input = gets.chomp.to_i
e=100
for i in 1.. do
    e+=(e*0.01).to_i
    if e>=input then
        ex=i
        break
    end
end
print ex