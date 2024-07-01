n = gets.to_i
s = gets.chomp

ans = 0
n.times do |i|
    s1 = s[0..i]
    s2 = s[i...n]
    hoge = (s1.split('') & s2.split('')).uniq
    ans = [ans, hoge.size].max
end
p ans