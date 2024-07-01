a=gets.chomp.to_i
b=gets.chomp.split(" ").map(&:to_i)
flg=true
cnt=0
jd=true
while flg do
    b = b.map do |i|
        if i.even? && jd
            jd= false
            i/2
        else
            i*3
        end
    end
    if jd
        break
    else
        jd=true
        cnt+=1
    end
end
puts cnt