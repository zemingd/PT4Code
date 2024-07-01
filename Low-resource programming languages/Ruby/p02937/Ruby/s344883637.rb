s = gets.chomp
t = gets.chomp

ss = Hash.new()

s.chars.each_with_index do |c, idx|
    ss[c] = Array.new unless ss[c]
    ss[c].push(idx)
end

ss.each do |k, v|
    ss[k].sort!
end

ans = 1
cur = 0
n = s.length

t.chars.each do |c|
    unless ss[c]
        ans = -1
        break
    end

    r = ss[c].bsearch_index{|x| x > cur}
    l = ss[c].bsearch_index{|x| x <= cur}

    nex = ss[c][r ? r : l]

    step = (nex - cur + n) % n
    step = n if step == 0

    ans += step
    cur = nex
end

puts ans
