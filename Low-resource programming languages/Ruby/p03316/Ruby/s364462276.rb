n = gets.to_i
t = n
sum = 0
while t > 0
    sum += t % 10
    t /= 10
end
puts n % sum  != 0? 'No' : 'Yes'
