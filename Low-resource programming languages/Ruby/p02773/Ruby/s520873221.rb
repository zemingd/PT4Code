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

puts "#{A.sort_by}"


