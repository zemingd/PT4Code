#a, v = gets.split.map(&:to_i)

n = gets.to_i
as = gets.split.map(&:to_i)

hh = {}
sum = 0
as.each do |a|
    hh[a] = 0 if hh[a] == nil
    hh[a] += 1
    sum += a
end

q = gets.to_i
q.times do |i|
    b, c = gets.split.map(&:to_i)
    if hh[b] == nil
        puts sum
        next
    end
    cnt = hh[b]
    hh[b] = nil
    sum -= b*cnt
    sum += c*cnt
    if hh[c] == nil
        hh[c] = cnt
    else
        hh[c] += cnt
    end
    puts sum
end

