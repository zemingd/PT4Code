$cnt = 0
def dfs(a,b,n)
    a = a.to_s
    b = b.to_s
    a = a + b
    a = a.to_i
    if(a > n)
        return 
    else
        k = a
        seven = 0 
        five = 0
        three = 0
    while k > 0
        k % 10 == 3 ? three+= 1 : k % 10 == 5 ? five+= 1 : seven += 1
        k /= 10
    end
    if(five > 0 && seven > 0 && three > 0)
        $cnt += 1
    end
end
    dfs(a,3,n)
    dfs(a,5,n)
    dfs(a,7,n)
end

n = gets.to_i

dfs(0,3,n)
dfs(0,5,n)
dfs(0,7,n)

puts $cnt
