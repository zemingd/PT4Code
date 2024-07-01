a=[[1,3,5,7,8,10,12],[4,6,9,11],[2]]
x,y=gets.split.map(&:to_i)
ans = false
3.times do |i|
    if a[i].include?(x) && a[i].include?(y)
        ans = true
    end
end
puts ans ? "Yes" : "No"