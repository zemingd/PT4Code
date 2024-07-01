n,k = gets.split.map(&:to_i)
num=0
n.times do
    a,b = gets.split.map(&:to_i)
    if k.between?(num,num+b)
        puts a
        break
    else
        num += b
    end
end