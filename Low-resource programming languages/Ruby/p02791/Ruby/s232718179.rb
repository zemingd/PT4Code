N = gets.strip.to_i
P = gets.strip.split.map(&:to_i)
mn =N+1
count=0
P.each do |i|
    if i<mn then
        mn=i
        count+=1
    end
end
puts count
