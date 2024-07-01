ary = []
ary << gets.to_i
ary << gets.to_i
ary << gets.to_i
ary << gets.to_i
ary << gets.to_i
m = []
timeCount = 0
puts
pp ary

# ちょうど10を全部足してしまう
for i in 0..4
    if (ary[i].to_i % 10) == 0
        pp timeCount += ary[i].to_i
        ary.delete_at(i)
    end
end

# 残り剰余が少ない順に足す、最後はそのまま足す
arr.each do
     (ary[i]/10.0).ceil*10
end

# puts m.inject(:+)
