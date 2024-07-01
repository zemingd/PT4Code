n = gets.split("")
m = []
n.each do |c|
    if c == "1"
        m << "9"        
    else
        m << "1"
    end
end
puts m.join.to_i