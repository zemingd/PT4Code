x=Array.new(4)
x=gets.split("").map(&:to_i)

op=Array.new(3)
[0,1].repeated_permutation(3).to_a.each do |bit|
    count=x[0]
    3.times do |i|
        if bit[i]==0
            op[i]="+"
            count+=x[i+1]
        else
            op[i]="-"
            count-=x[i+1]
        end
    end
    if count==7
        puts "#{x[0]}#{op[0]}#{x[1]}#{op[1]}#{x[2]}#{op[2]}#{x[3]}=7"
        return
    end
end
