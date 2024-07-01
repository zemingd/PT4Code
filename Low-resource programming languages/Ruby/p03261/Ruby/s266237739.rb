n = gets.to_i
h = Hash.new
pre = "0"
n.times do 
    w = gets.chomp
    if (pre == "0" || w[0] == pre) && !h[w]
        pre = w[-1]
        h[w] = true
    else
        puts "No"
        exit
    end
end
puts "Yes"