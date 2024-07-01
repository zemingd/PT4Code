n = gets.chomp.to_i

cnt = Array.new(n+1,0)

for x in 1..Math.sqrt(n).to_i do
    for y in 1..x do
        for z in y..x do
            ans = x**2 + y**2 + x*y + z**2 + y*z + z*x
            break if ans > n
            #puts "#{x} #{y} #{z}"
            if x == y && y == z 
                cnt[ans] += 1
            elsif x != y && y != z && x != z
                cnt[ans] += 6
            else
                cnt[ans] += 3
            end
        end
    end
end

for i in 1..n do
    #puts "N=#{i}のとき"
    puts cnt[i]
end