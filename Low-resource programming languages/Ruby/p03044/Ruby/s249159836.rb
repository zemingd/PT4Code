n = gets.chomp.to_i
a = []
color = Array.new(n,false)
odds = Array.new(n).map{Array.new}
evens = Array.new(n).map{Array.new}
degree = Array.new(n,0)

for i in 1..n-1 do
    a = gets.chomp.split(" ").map(&:to_i)
    u = a[0]
    v = a[1]
    w = a[2]
    if w.odd?
        odds[u-1].push(v)
        odds[v-1].push(u)
    else
        evens[u-1].push(v)
        evens[v-1].push(u)           
    end
    degree[u-1] += 1
    degree[v-1] += 1
end

# p degree

i = 1
while degree[i-1] > 1
    i += 1
end

color[i-1] = true
stack = [i]
check = 2**n -1


while stack.size > 0
    #  print "stack ", stack, "\n"
    tar = stack.shift
    tar -= 1
    #  print "tar ", tar + 1, "\n"
    check = check & ~ ( 1 << tar)
    #  print "check ", check.to_s(2), "\n"
    col = color[tar]
    #  print "odds ", odds[tar], "\n"
    for node in odds[tar] do
        #  print "node ", node, "\n"
        if check & (1 << (node-1)) > 0
            #  print "push node ", node, "\n"
            stack.push(node)
            color[node-1] = ! col
        end
    end 

    #  print "evens ", evens[tar], "\n"
    for node in evens[tar] do
        #  print "node ", node, "\n"
        #  print "check ", check.to_s(2), "\n"
        if check & (1 << (node-1) ) > 0
            #  print "push node ", node, "\n"
            stack.push(node)
            color[node-1] = col
        end
    end 
    # puts ""
end

#  print "stack ", stack, "\n"
#  print "color "
# p color

for i in 1..n do
    if color[i-1] 
        puts "1"
    else
        puts "0"
    end
end

