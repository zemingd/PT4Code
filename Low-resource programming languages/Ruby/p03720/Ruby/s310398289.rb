# 早い話出てきた回数を数えればいい
n, m = gets.split.map(&:to_i)
ary = Array.new()
m.times do |_|
    ary.push(gets.split.map(&:to_i))
end
ary.flatten!
n.times do |i|
    puts ary.count(i+1)
end