n,m=gets.split.map &:to_i
plans=Array.new(m){Array.new(2)}
m.times do |i|
    plans[i]=gets.split.map &:to_i
end
cnt=0
plans.sort_by!{|ary| ary[1]}
until plans.empty?
    tmp=plans[0][1]
    print plans
    puts ""
    loop do
        if plans.length!=0 && plans[0][0] < tmp 
            plans.delete_at(0)
        else
            cnt += 1
            break
        end
    end
end

puts cnt