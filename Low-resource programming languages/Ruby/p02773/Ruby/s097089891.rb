N = gets.to_i
S = gets.chomp.split("\n")
max = 0 
A = []

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

A = A.uniq.sort_by

A.each do |a|
    puts "#{a}"
end