n=gets.to_i
@i = Array.new(n,false)
@a=$<.map{|s|s.split.map(&:to_i)}.sort

def dfs(k)
    if k[2].even?
        @i[k[1]-1] = @i[k[0]-1]
    else
        @i[k[1]-1] = @i[k[0]-1]^1
    end
    @a.select{|s|s[0]==k[1]}.each do |e|
        dfs(e)
    end
end

while w = @i.index(false)
    @i[w] = 0
    @a.select{|s|s[0]==w}.each do |e|
        dfs(e)
    end
end

puts @i
