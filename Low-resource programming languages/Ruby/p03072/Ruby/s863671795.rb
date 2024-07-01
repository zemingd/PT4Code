n=gets.to_i
h=gets.split.map{|u| u.to_i}
max=0
count=0
h.each{
    |i|
    if i>=max
        count+=1
        max=i
    end
}
puts count