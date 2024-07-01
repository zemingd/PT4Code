cnt = 0
def dfs(x,y,n)
    k = 10 * x + y
    if k > n
        return ;
    end
    t = k
    if(n / 100 >= 1)
        three = 0,five = 0, seven = 0
        while t > 0
            if t % 10 == 3
                three = 1
            elsif
                t % 10 == 5
                five = 1
            else
                seven = 1
            end
            t /= 10
        end
        if three == 1 && five == 1 && seven == 1
            cnt += 1
        end
    end
end


n = gets.to_i
dfs(0,3,n)
dfs(0,5,n)
dfs(0,7,n)
puts cnt