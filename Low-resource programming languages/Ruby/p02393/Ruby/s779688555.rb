a, b, c = STDIN.gets.split(' ')
a = a.to_i
b = b.to_i
c = c.to_i
arr = Array.new(3)
arr = [a,b,c]
arr.sort
puts a b c 
end