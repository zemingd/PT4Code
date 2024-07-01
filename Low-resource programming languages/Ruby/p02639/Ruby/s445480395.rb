xi = gets.chomp.split(" ").map!{|item| item.to_i}
for i in 1..5 do
    if xi[i-1] == 0
    print(i )
    end
end