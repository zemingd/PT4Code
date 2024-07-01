input = $stdin.read
a = input.split("")[0].to_i
b = input.split("")[2].to_i

result = a * b
if (result % 2 == 0) 
puts("Even")
else 
puts ("Odd")
end

