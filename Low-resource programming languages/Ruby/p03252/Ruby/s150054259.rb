# 文字と文字が1対1で対応するならYes
s1 = gets.chomp
s2 = gets.chomp

map1 = {}
map2 = {}

s1.size.times do |i|
    map1[s1[i]] = s2[i]
    map2[s2[i]] = s1[i]
end

if map1.size === map2.size
    puts "Yes"
else
    puts "No"
end