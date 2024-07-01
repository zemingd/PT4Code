N, C = gets.split.map(&:to_i)
ss, ts, cs = [], [], []
N.times do |i|
    ss[i], ts[i], cs[i] = gets.split.map(&:to_i)
end

tmax = ts.max

imos = Array.new(C + 1){Array.new(tmax + 1, 0)}

N.times do |i|
    s, t, c = ss[i], ts[i], cs[i]
    if imos[c][s] == -1
        imos[c][s] = 0
    else
        imos[c][s - 1] = 1
    end
    if imos[c][t - 1] == 1
        imos[c][t - 1] = 0
    else
        imos[c][t] = -1
    end
end

(1..C).each do |chan|
    (1..tmax).each do |tim|
        imos[chan][tim] += imos[chan][tim - 1]
    end
end

max = 0
(0..tmax).each do |tim|
    sum = 0
    (1..C).each do |chan|
        sum += imos[chan][tim]
    end
    max = sum if sum > max
end

print max
