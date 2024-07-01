imput = gets.split(' ').map(&:to_i)
n = imput[0]
k = imput[1]
h = gets.split(' ').map(&:to_i)

if n <= k then 
    puts("0")
else
    #h.sort!()
    #h.pop(k)
    puts(h.sum)
end