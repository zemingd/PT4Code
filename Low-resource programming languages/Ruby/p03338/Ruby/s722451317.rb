n = gets.to_i
s = gets.chomp
x = ("a".."z").to_a

ans = 0
(n-2).times do |i|
    count = 0
    x.each do |c| 
        count += 1 if s[0..i].include?(c) && s[i+1..n-1].include?(c)
    end
    ans = count if ans < count
end

puts ans