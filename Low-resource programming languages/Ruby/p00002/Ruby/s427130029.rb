while line = gets do
        array  = line.split(" ").map do |x|
                x = x.to_i
        end

        sum = 0
        array.each do |x|
                sum = sum + x 
        end

        puts sum.to_s.length
end
