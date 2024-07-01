n=gets.to_i
a=gets.split.map(&:to_i)
cnt=0
a.each{|a|
    while(1)
        if a%2==0
            cnt+=1
            a/=2
        else
            break
        end
    end
}
puts "#{cnt}"