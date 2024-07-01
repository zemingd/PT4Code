EVEN,ODD = gets.split(" ").map(&:to_i)

array = [EVEN,ODD].map{|num|
    if 3 <= num 
        num*(num-1)/2
    elsif num == 2
        1
    else
        0
    end
}
puts array.sum