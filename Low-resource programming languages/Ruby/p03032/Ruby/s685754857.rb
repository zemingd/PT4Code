# require 'marshal'
input = gets.chomp.split
n = input[0].to_i
k = input[1].to_i
v = gets.chomp.split(" ").map(&:to_i)

m = [n,k].min

right = v[-m,m]
left = v[0,m]

right.reverse!

right_sum = []
left_sum = []

rsum = 0
rstack = []
lsum = 0
lstack = []

for i in 1..m do
    r = right[i-1]
    rsum += r
    if r < 0
        rstack.push(r)
    end
    stack = Marshal.load(Marshal.dump(rstack))
    right_sum.push([rsum,stack])

    l = left[i-1]
    lsum += l
    if l < 0
        lstack.push(l)
    end
    stack = Marshal.load(Marshal.dump(lstack))
    left_sum.push([lsum,stack])
end

score_max = 0

# 左から0個とる場合
for r in 1..m do
    score = right_sum[r-1][0]
    stack = right_sum[r-1][1]
    ret = [k-r,stack.size].min
    sum = 0
    stack.sort!
    for i in 1..ret
        sum += stack[i-1]
    end
    score += sum * -1
    if score_max  < score
        score_max = score
    end
end

# 左からl個とる場合 (1 <= l <= m)
for l in 1..m do
    score = left_sum[l-1][0]
    stack = left_sum[l-1][1]
    for r in 1..(m-l) do
        score2 = right_sum[r-1][0] + score
        stack2 = right_sum[r-1][1] + stack.dup
        ret = [k-l-r,stack2.size].min
        sum = 0
        stack2.sort!
        for i in 1..ret
            sum += stack2[i-1]
        end
        score2 += sum * -1
        if score_max  < score2
            score_max = score2
        end
    end

        ret = [k-l,stack.size].min
    sum = 0
    stack.sort!
    for i in 1..ret
        sum += stack[i-1]
    end
    score += sum * -1
    if score_max  < score
        score_max = score
    end
end

p score_max