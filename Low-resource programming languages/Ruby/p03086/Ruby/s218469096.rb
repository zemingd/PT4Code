ary = gets.split("")
t = %w[A C G T]
count = 0
max = 0
ary.each do |n|
    if t.include?(n)
        count +=1
     else
        count = 0 
    end
    if max <count
       max = count
    end
end
p max