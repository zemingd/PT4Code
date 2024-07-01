x=gets.to_i
flag=false

(-100..100).each do |a|
    (-100..100).each do |b|
        if a**5-b**5==x
            puts "#{a} #{b}" 
            flag=true
            break
        end
        break if flag
    end
    break if flag
end