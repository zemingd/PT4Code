n = gets.to_i
result = 0
n.times do |l|
    i = (l + 1).to_s
    if i.include?("7") and i.include?("5") and i.include?("3") then 
        i.delete!("7")
        i.delete!("5")
        i.delete!("3")
        if i.empty? then
            result += 1
            puts l + 1
        end
    end
end
puts result