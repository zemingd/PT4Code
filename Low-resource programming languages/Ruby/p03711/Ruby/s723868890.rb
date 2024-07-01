a=[[1,3,5,7,8,10,12],[4,6,9,11],[2]]
x,y=gets.split.map(&:to_i)

ans=false

a.each{|l|
    if l.include?(x)&&l.include?(y)
        ans=true
    end
}

puts ans ? "Yes" : "No"