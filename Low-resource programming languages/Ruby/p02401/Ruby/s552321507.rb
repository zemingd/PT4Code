a=[]
loop do
    b = gets
    if b=~/. \? ./
        puts a.join("\n")
        break
    end
    a.push(eval(b))
end
