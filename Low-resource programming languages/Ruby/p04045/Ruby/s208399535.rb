N,k=gets.chomp.split(" ")
N_i = N.to_i
K = k.to_i
d_array=gets.chomp.split(" ").map(&:to_i)
E_array= (0..9).to_a - d_array

if 10-K == 1
    ret = E_array[0]
    while ret < N_i
        ret = ret*10 + E_array[0]
    end
    puts ret
    exit
end

# 使える数字を元にn進数を10進数にする
def to_i10(n)
    n_s = n.to_s(10-K)
    ret = 0
    (0..(n_s.length-1)).each do |i|
        if i==n_s.length-1 || E_array[0]==0
            ret = ret*10 + E_array[n_s[i].to_i]
        else
            ret = ret*10 + E_array[n_s[i].to_i-1]
        end
    end
    ret
end

sup = (10**N.length).to_s(10-K).to_i
inf = 0
loop do
    mid = (sup + inf)/2
    if inf == mid
        puts to_i10(sup)
        break
    end

    mid_i10 = to_i10(mid)
    if mid_i10 < N_i
        inf = mid
    else
        sup = mid
    end
end