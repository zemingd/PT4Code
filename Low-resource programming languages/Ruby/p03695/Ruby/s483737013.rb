n = gets.to_i

max = 0

smaller = []

a = gets.split.map{|x|
    color = x.to_i / 400
    if color >= 8 then
        max += 1
    else
        smaller.push(color)
    end
    color
}.sort

min = smaller.sort.uniq.length
max += min

printf("%d %d\n", min, max)

#レート 1-399：灰色
#レート 400-799：茶色
#レート 800-1199：緑色
#レート 1200-1599：水色
#レート 1600-1999：青色
#レート 2000-2399：黄色
#レート 2400-2799：橙色
#レート 2800-3199：赤色