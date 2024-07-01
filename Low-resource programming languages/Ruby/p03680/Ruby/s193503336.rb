n = gets.to_i
a = Array.new
 
n.times do
a << gets.to_i    
end
 
t = 0
answer = -1
b = 1
n.times do
    t = t + 1
    b = a[b-1]
    if b==2
        answer = t
        break
    end
end
 
puts answer