n = gets.to_i
d = gets.split.map &:to_i

if d[0] != 0
    puts 0
    exit
end

keys = []
counts = {}


d.each do |di|
    counts[di] ||= 0
    counts[di] += 1
    keys[di] = true
    if counts[0] > 1
        puts 0
        exit
    end
end

if keys.all?
    a = 1
    m = keys.size - 1
    (1..m).each do |i|
        a *= counts[i-1] ** counts[i]
    end
    puts a % 998244353
else
    puts 0
end
