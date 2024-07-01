n = gets.chomp.to_i
#as = gets.chomp.split.map(&:to_i)

def func(n)
    cnt = 0
    ans = 0
    for x in 1..n do
        ans = x**2
        break if ans >= n
        for y in 1..n do
            ans += y**2 + x*y
            break if ans >= n
            for z in 1..n do
                #puts "#{x} #{y} #{z}"
                ans += z**2 + y*z + z*x
                #puts ans
                break if ans > n
                if ans == n
                    if x == y && y == z 
                        cnt += 1
                    elsif x != y && y != z
                        cnt += 6
                    else
                        cnt += 3
                    end
                end
            end
        end
    end
    return cnt
end

for i in 1..n do
    #puts "N=#{i}のとき"
    puts func(i)
end