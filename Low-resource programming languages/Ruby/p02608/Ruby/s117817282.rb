n = gets.chomp.to_i
#as = gets.chomp.split.map(&:to_i)

def func(n)
    cnt = 0
    ans = 0
    max = Math.sqrt(n)
    for x in 1..max do
        ans = x**2
        break if ans >= n
        for y in 1..x do
            ans = x**2 + y**2 + x*y
            break if ans >= n
            for z in y..x do
                ans = x**2 + y**2 + x*y + z**2 + y*z + z*x
                break if ans > n
                if ans == n
                    #puts "#{x} #{y} #{z}"
                    if x == y && y == z 
                        cnt += 1
                    elsif x != y && y != z && x != z
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