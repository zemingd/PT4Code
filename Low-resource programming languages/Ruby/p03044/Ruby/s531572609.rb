n = gets.chomp.to_i
a = []
color = Array.new(n,0)
for i in 1..n-1 do
    a.push(gets.chomp.split(" ").map(&:to_i))
end

a.sort! {|x,y| (x[0] <=> y[0]).nonzero? || (x[1] <=> y[1]) }

for i in 1..n-1 do
    u = a[i-1][0]
    v = a[i-1][1]
    w = a[i-1][2]
    if w.odd? 
        if color[u-1] != 0
             color[v-1] = color[u-1] * -1
        elsif color[v-1] != 0
             color[u-1] = color[v-1] * -1
        else
            color[u-1] = 1
            color[v-1] = -1
        end
    else
        if color[u-1] != 0
             color[v-1] = color[u-1]
        elsif color[v-1] != 0
             color[u-1] = color[v-1]
        end
    end
end

for i in 1..n do
    if color[i-1] >= 0
        puts "0"
    else
        puts "1"
    end
end