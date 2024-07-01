a,b = gets.chomp.split(' ').map(&:to_f)
i=1
while true
    if ((i*0.08).floor == a) && ((i*0.1).floor == b)
        puts i.to_i
        break
    elsif i > 1000000
        puts "-1"
        break
    end
    i+=1
end