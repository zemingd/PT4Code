n=gets.to_i
witness = []
n.times do
    witness << Array.new(n){-1}
end
n.times do |row|
    gets.to_i.times do
        c,w=gets.chomp.split(' ').map(&:to_i)
        witness[row][c-1] = w
    end
end
d =Array.new(n){0}
flag=false
ans = []
(1<<n).times do |i|
    n.times do |j|
        if((i>>j)&1==1)
            d[j]=1
        end
    end
    d.size.times do |j|
        if d[j]==1
            witness[j].size.times do |k|
                if (witness[j][k]==-1)||(witness[j][k]==d[k])
                    flag = true
                else
                    flag = false
                    break
                end
            end
        end
        if !flag
            break
        end
    end
    if flag
        ans << d.count(1)
    end
    flag = false
    d =Array.new(n){0}
end

if ans.size>0
    puts ans.max
else
    puts 0
end