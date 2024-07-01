while data = gets
    num = data.split(nil)
    sum = num[0].to_i + num[1].to_i
    ans = sum.to_s.length
    puts ans
end