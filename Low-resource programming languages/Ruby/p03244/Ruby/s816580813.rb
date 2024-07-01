n=gets.to_i
v=gets.chomp.split.map(&:to_i)
v1=[]
v2=[]

h1 = Hash.new(0)
h2 = Hash.new(0)
v.each_with_index do |w, i|
    if i%2==0
        v1 << w
        h1[w] += 1
    else
        v2 << w
        h2[w] += 1
    end
end

hh1 = h1.to_a.sort {|a,b| a[1] <=> b[1]}.reverse
hh2 = h2.to_a.sort {|a,b| a[1] <=> b[1]}.reverse

#p hh1
#p hh2

# 最頻値の数が同じ
if hh1[0][1] == hh2[0][1]
    # 最頻値の値も同じ
    if hh1[0][0] == hh2[0][0]
        # 最頻値の数がn/2（つまり全て同じ数値）
        if hh1[0][1] == n/2
            puts n/2
        else 
            puts n - hh1[0][1] - [hh1[1][1], hh2[1][1]].max
        end
    else
        puts n - 2 * hh1[0][1]
    end
else
    if hh1[0][0] == hh2[0][0]
        if hh1[0][1] > hh2[0][1]
            puts n - hh1[0][1] - hh2[1][1]
        else
            puts n - hh2[0][1] - hh1[1][1]
        end
    else
        puts n - hh1[0][1] - hh2[0][1]
    end
end
