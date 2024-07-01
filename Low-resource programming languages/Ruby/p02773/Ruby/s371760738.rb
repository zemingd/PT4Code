N = gets.chomp.to_i
a = Array.new(N)
for i in 0...N do
    str = gets.chomp
    a[i] = str
end
a.sort_by! {|x| x}
a.reverse!

b = Array.new(0)
x = 0
y = 0
for i in 1...N do
    if a[i] == a[i-1]
        x += 1
    else
        if x > y
            b.clear
            b.push(a[i-1])
            y = x
        elsif x == y
            b.push(a[i-1])
        end
        x = 0
    end
end
if x > y
    b.clear
    b.push(a[N-1])
    y = x
elsif x == y
    b.push(a[N-1])
end

while !b.empty?
    puts b.pop
end