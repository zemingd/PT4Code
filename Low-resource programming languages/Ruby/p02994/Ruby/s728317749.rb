a = gets.split.map(&:to_i)

if a[1] >= 0
    sum = 0
    b = a[1] + 1
    (a[0] - 1).times do
        sum += b
        b = b + 1
    end
    p sum
else
    dd = a[1]
    ee = []
    a[0].times do
        ee.push(dd)
        dd += 1
    end
    
    result = ee.sort_by do |i|
        i.abs
    end
    # p result[0]
    #eeからresult[0]を抜く
    ee.delete(result[0])
    p ee.sum
end




