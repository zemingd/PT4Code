s,e = gets.split(" ").map(&:to_i)
count = 0
(s..e).each do |n|
    if n.to_s ==n.to_s.reverse
        count +=1
    end
end
p count