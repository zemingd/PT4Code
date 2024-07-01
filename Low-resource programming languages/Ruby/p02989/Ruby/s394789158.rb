N = gets.to_i
d_tmp = gets
d = d_tmp.split(" ").map(&:to_i)

match_cnt = 0

for k in d.min+1..d.max
    arc_cnt = 0
    abc_cnt = 0
    for i in 0..N-1
        if d[i] >= k
            arc_cnt += 1
        else
            abc_cnt += 1
        end
    end
    match_cnt += 1 if arc_cnt == abc_cnt
end

print match_cnt