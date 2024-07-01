n = gets.chomp.to_i
ls = gets.chomp.split.map(&:to_i).sort
cnt = 0
n.times do |i|
    j=i-1
    k=0
    while k<j do
        if ls[i] < ls[k]+ls[j]
            cnt+=j-k
            j-=1
        else
            k+=1
        end
    end
end
puts cnt