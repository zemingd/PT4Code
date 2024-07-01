array = Array.new
str = gets.chomp.split(" ")
str.each do |s|
    if s == "0"
        array << s.to_i
    elsif s.to_i == 0
        a = array.pop
        b = array.pop
        if s == "+"
            array << a + b
        elsif s == "-"
            array << b - a
        elsif s == "*"
            array << b * a
        end
    else
        array << s.to_i
    end
end

puts array[0]
