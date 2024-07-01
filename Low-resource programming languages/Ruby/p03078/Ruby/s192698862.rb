x, y, z, k = gets.chomp.split.map(&:to_i)
a_ary = gets.chomp.split.map(&:to_i)
b_ary = gets.chomp.split.map(&:to_i)
c_ary = gets.chomp.split.map(&:to_i)
a_ary.sort! {|a, b| b <=> a }
a_ary << -Float::INFINITY 
b_ary.sort! {|a, b| b <=> a }
b_ary << -Float::INFINITY 
c_ary.sort! {|a, b| b <=> a }
c_ary << -Float::INFINITY 

# 配列に入っているかの管理
hash_n = {}
pop_ary = []
# value, a,b,c
ans = []
pop_ary << [a_ary[0]+b_ary[0]+c_ary[0],0,0,0]
hash_n[[0,0,0]] = true
# p hash_n

for i in 1..k
    pop_ary.sort! {|a, b| b <=> a }
    # p pop_ary
    ans << pop_ary[0]
    # p pop_ary[0]
    a,b,c = pop_ary[0][1], pop_ary[0][2], pop_ary[0][3]
    # p [a,b,c]
    # p hash_n
    if !(hash_n.has_key?([a+1,b,c]))
        pop_ary << [a_ary[a+1]+b_ary[b]+c_ary[c],a+1,b,c]
        hash_n[[a+1,b,c]] = true
    end
    if !(hash_n.has_key?([a,b+1,c]))
        pop_ary << [a_ary[a]+b_ary[b+1]+c_ary[c],a,b+1,c]
        hash_n[[a,b+1,c]] = true
    end
    if !(hash_n.has_key?([a,b,c+1]))
        pop_ary << [a_ary[a]+b_ary[b]+c_ary[c+1],a,b,c+1]
        hash_n[[a,b,c+1]] = true
    end
    pop_ary.shift
end

for i in 0...k
    puts ans[i][0]
end

