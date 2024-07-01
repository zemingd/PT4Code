imput = gets.split(' ').map(&:to_i)
n = imput[0]
k = imput[1]
h = gets.split(' ').map(&:to_i)

if n <= k then 
    puts("0")
else
    h.sort_by!()
    h.pop(k)
    sum = 0
    h.each{|x| sum += x}
    puts(sum)
end