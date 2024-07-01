n = gets.chomp.to_i
n.times do |x|
    if (x+1)%3==0 then
        print(" ",x+1)
    end
end
print(\n)