n=gets.to_i
@i = Array.new(n,0)
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

dfs(@a[0])

puts @i
