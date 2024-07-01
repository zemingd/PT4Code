S = []; A = []
(gets.to_i).times do 
    S << gets.chomp
end
max = 0 

S.each do |s|
    tmp = S.count(s)
    if tmp >= max
        max = tmp
    end
end
 
S.each do |s|
    if S.count(s) == max
        A << s
    end
end

A = A.uniq
A = A.sort

A.each do |a|
    puts "#{a}"
end


