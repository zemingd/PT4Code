x=gets.to_i
flag=false

(-2000..2000).each do |a|
    (-2000..2000).each do |b|
        if a**5-b**5==x
            puts "#{a} #{b}" 
            flag=true
            break
        end
        break if flag
    end
    break if flag
end