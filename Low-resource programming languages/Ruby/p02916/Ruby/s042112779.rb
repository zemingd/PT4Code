n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

pnt = 0
last = -1
for i in 1..n do
    tar = a[i-1]
    pnt += b[tar-1]
    if tar-last == 1
        pnt += c[last-1]
    end
    last = tar
end

p pnt