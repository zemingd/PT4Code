s = gets.chomp
t = gets.chomp

n = s.length

ss = Hash.new()

s = s + s
s.chars.each_with_index do |c, idx|
    ss[c] = Array.new unless ss[c]
    ss[c].push(idx)
end

ss.each do |k, v|
    ss[k].sort!
end

ans = 0
cur = n-1

t.chars.each do |c|
    unless ss[c]
        ans = -1
        break
    end

    r = ss[c].bsearch_index{|x| x > cur}
    nex = r ? ss[c][r] : ss[c].last

    nex %= n
    step = (nex - cur + n) % n
    step = n if step == 0

    ans += step
    cur = nex
end

puts ans
