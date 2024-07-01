def main()
    num = gets.to_i
    j = gets.split
    jj = j.map!(&:to_i)
    j2 = jj.length
    i = 1
    a = 0
    j3 = Array.new(jj.length, 0)
    while j2 > 0
        k = jj.select { |n| n == i }
        j3[a] = k.length
        a =+ 1
        j2 = j2 - k.length
        i = i+ 1
    end
    return j3
end
    
result = main()

result.each{|a|
    p a
}