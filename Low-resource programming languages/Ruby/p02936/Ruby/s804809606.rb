N,Q=gets.chomp.split(" ").map(&:to_i)

edges = {}
(N-1).times {
    a,b=gets.chomp.split(" ").map(&:to_i)
    a_edge = edges[a]
    if a_edge == nil
        edges[a] = [b]
    else
        a_edge.push(b)
    end
    
    b_edge = edges[b]
    if b_edge == nil
        edges[b] = [a]
    else
        b_edge.push(a)
    end
}

ops={}
(1..N).each{|n| ops[n] = 0 }
Q.times do
    p,x=gets.chomp.split(" ").map(&:to_i)
    ops[p] += x
end

memo = {}
def calc(p, c, edges, ops, memo)
    return memo if memo[p] != nil
    memo[p] = c + ops[p]
    nexts = edges[p]
    if nexts != nil
        nexts.each do |pnext|
            calc(pnext, memo[p], edges, ops, memo)
        end
    end
    memo
end

memo = calc(1, 0, edges, ops, memo)

(1..N).each do |n|
    print memo[n] 
    if n != N
        print " "
    end
end
