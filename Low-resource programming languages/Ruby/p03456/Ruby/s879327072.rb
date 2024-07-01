b,c = gets.split(" ")

a = b + c
a = a.to_i

def is_square(num)
    t = Math.sqrt(num).floor
    return t*t == num
end
    
if is_square(a)
    puts "Yes"
else 
    puts "No"
end