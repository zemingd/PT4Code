s = gets.strip
t = gets.strip

arr = Array.new(10000)

s.each_codepoint.to_a.each do |c|
    arr[c] = 1
end

not_exists = false
t.each_codepoint.to_a.each do |c|
    if !arr[c]
        not_exists = true
        break
    end
end

if not_exists
    puts -1
    exit
end

# その文字が現れる一番最初のインデックスを持っておく
memo = {}
# その文字の登場回数を持っておく
count = {}
s.chars.each.with_index do |c, i|
    if memo[c].nil?
        memo[c] = i
    else
        memo[c] = [memo[c], i].min
    end

    if count[c].nil?
        count[c] = 1
    else
        count[c] += 1
    end
end

ans = 0

# 文字列tの各文字が文字列sのどこに現れるかのインデックス
index = t.chars.map {|c| memo[c]}

pre = -1
index.each do |i|
    if i < pre
        ans += s.length
    end
    pre = i
end

last = t.chars.last
ans += memo[last] + 1

t_count = {}
t_seq = []
pre = ''
t.chars.each do |c, i|
    if t_count[c].nil?
        t_count[c] = 1
    else
        next if i == t.length - 1
        t_count[c] += 1
        if pre == c
            t_seq << c
        end
    end
    pre = c
end

t_seq.each do |t_c|
    if t_count[t_c] > count[t_c]
        ans += s.length
    end
end

puts ans