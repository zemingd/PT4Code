n, a, c = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)
count = 0
n.times do 
    sum = 0
    t = gets.split(" ").map(&:to_i)
    (0..a-1).each do |n|
        sum += ary[n]*t[n]
    end
    sum += c  
    count += 1 if sum >0
end
puts count