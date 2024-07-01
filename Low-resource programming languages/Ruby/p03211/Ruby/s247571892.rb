    str = gets
    CNT = str.length
    i = 0
    min = 753
    while CNT - i >= 3 do
        if (str[i,3].to_i - 753).abs < min then
            min = (str[i,3].to_i - 753).abs
        end
        i = i + 1
    end
    print min