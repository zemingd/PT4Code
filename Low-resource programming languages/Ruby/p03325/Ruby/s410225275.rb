N=gets.to_i
as=gets.split.map(&:to_i)
cnt=0
as.each do |a|
    scnt=cnt
    while true
        if a % 2**(cnt-scnt+1)==0
            cnt+=1
        else
            break
        end
    end
end
puts cnt
