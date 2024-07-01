N,Q=gets.chomp.split(" ").map(&:to_i)

edges = {}
(N-1).times do 
    a,b=gets.chomp.split(" ").map(&:to_i)
    if edges[a] == nil
        edges[a] = [b]
    else
        edges[a].push(b)
    end
end

ops={}
(1..N).each{|n| ops[n] = 0 }
Q.times do
    p,x=gets.chomp.split(" ").map(&:to_i)
    ops[p] += x
end

memo = {}
(1..N).each{|n| memo[n] = 0 }
def calc(p, c, edges, ops, memo)
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
