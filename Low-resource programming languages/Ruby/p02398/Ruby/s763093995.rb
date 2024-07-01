a,b,c=gets.chomp.split(" ").map(&:to_i)
ans=0
for i in a..b
    ans+=1 if (c%i).zero?
end
puts ans
