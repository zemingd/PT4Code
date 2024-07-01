include Math
require 'bigdecimal'
 
a = []
a = gets.split.map(&:to_i)
cnt = 0.to_f
for i in 0..a[0]-1
    if i+1>=a[1]
        cnt += (1.to_f/a[0]).to_f
    else
    t = 1.0.to_f
    l = log(a[1]/(i+1))
    l = l/log(2)
    l = l.to_i
    l += 1
    #puts l
    t = (1.to_f/a[0]).to_f
    #puts t
    t *= (1/2.to_f)**l
    #puts t
    cnt += t
    end
end
puts BigDecimal(cnt.to_s).to_s("F")