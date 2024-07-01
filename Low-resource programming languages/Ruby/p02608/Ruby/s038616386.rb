n = gets.chomp.to_i
#as = gets.chomp.split.map(&:to_i)

cnt = Array.new(n+1,0)
ans = 0
max = Math.sqrt(n)
for x in 1..max do
    for y in 1..max do
        for z in 1..max do
            ans = x**2 + y**2 + z**2 + x*y + y*z + z*x
            if ans <= n
                cnt[ans] += 1
            end
        end
    end
end

for i in 1..n do
    #puts "N=#{i}のとき"
    puts cnt[i]
end