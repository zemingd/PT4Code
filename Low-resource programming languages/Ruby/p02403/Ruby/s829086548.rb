arr=Array.new
while str=STDIN.gets
        lines=str.chomp.split.map{|v|v.to_i}
        break if lines[0]==0 && lines[1]==0
        arr.insert(arr.length,lines)
end
arr.each do | lines |
    row=0
    while(row<lines[0])
    col=0
    while(col<lines[1])
        printf "#"
        col=col+1
    end
    printf "\n"
    row=row+1
    end
    printf "\n"
end