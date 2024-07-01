N, Q = gets.split(' ')
S = gets.chomp
count = []
Q.to_i.times do
    l, r = gets.split(' ')
    str = S[l.to_i-1,r.to_i-l.to_i+1]
    count << str.scan(/AC/).length
end

puts count