s = gets.chomp
num=0
loop do
    num01=s.scan('01').length
    if num01>0
        num+=num01
        s.gsub!(/01/, '')
        next
    end
    num10=s.scan('10').length
    if num10>0
        num+=num10
        s.gsub!(/10/, '')
        next
    end
    break
end
puts num*2