s = gets.to_i
t, sum = s, 0
loop{
    if t==0 then
        break
    end
    sum+=t%10
    t/=10
}
puts s%sum==0 ? 'Yes' : 'No'