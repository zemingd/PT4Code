N = gets.to_i
AB = N.times.map{gets.split.map(&:to_i)}.sort_by{|a, b| b}

sum = 0
AB.each do |a, b|
    sum += a
    if sum > b
        puts "No"
        exit
    end
end
puts "Yes"