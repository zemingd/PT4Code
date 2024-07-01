a, b, c = gets.chomp.split.map(&:to_i)
d = gets.chomp.split.map(&:to_i)
sum = 0
ans = 0
a.times do |hoge|
    i = gets.chomp.split.map(&:to_i)
    b.times do |huga|
        sum += d[huga] * i[huga]
    end
    sum += c
    ans += 1 if sum > 0
    sum = 0
end
puts ans 
    