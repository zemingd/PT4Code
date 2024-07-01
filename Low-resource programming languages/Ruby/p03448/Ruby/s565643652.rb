A, B, C, X = gets.to_i, gets.to_i, gets.to_i, gets.to_i
ans=0
for a in 0..A do
    for b in 0..B do
        for c in 0..C do
            if a*500+b*100+c*50==X then
                ans+=1
            end
        end
    end
end
puts ans