N , Q = gets.split.map!{|a| a.to_i}
S = gets.chomp!
l = Array.new(Q).map!{Array.new(2)}
Q.times do |i|
    l[i] = gets.split.map!{|a| a.to_i}
end

count = Array.new(S.size)
count[0] = 0

(S.size - 1).times do |i|
    count[i + 1] = count[i]
    if S[i + 1] == 'C' && S[i] == 'A'
        count[i + 1] += 1
    end
end

Q.times do |i|
    puts count[l[i][1] - 1] - count[l[i][0] - 1]
end
