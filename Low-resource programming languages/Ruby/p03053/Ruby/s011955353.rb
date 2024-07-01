h,w=gets.split.map &:to_i
map=Array.new(h){Array.new(w)}
0.upto(h-1) do |i|
    map[i]=gets.chomp.split(//)
end

stack=Array.new
times=Array.new(h){Array.new(w,Float::INFINITY)}
0.upto(h-1) do |i|
    0.upto(w-1) do |j|
        if map[i][j]=="#"
            stack << [i,j]
            times[i][j]=0
        end
    end
end
nstack=Array.new
searchy=[1,-1,0,0]
searchx=[0,0,1,-1]

loop do
    until stack.empty?
        y,x=stack.shift
        0.upto(3) do |i|
            ny=y+searchy[i]
            nx=x+searchx[i]
            if ny>=0 && nx >=0 && ny < h && nx < w && map[ny][nx]=="."
                map[ny][nx]="#"
                nstack << [ny,nx]
                times[ny][nx]=[times[y][x]+1,times[ny][nx]].min
            end
        end
    end
    stack=nstack
    if nstack.empty?
        break
    end
end

max=0
times.each do |elem|
    tmp=elem.max
    if max < tmp
        max=tmp
    end
end
puts max
