n,m,c=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
count=0

n.times do
    a=gets.split.map(&:to_i)
    jdg=0
    a.zip(b).each {|i,j| jdg+=i*j}
    count+=1 if jdg+c > 0
end

p count
