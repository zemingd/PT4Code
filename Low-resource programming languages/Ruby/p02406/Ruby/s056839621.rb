n=gets.to_i
for i in 1..n
    if i%3==0
        printf(" %d",i)
    end
    if i.to_s.split("").include?("3") then printf(" %d",i) end
end
puts ""
