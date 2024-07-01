n = gets.chomp.to_i
abs = n.times.map { gets.chomp.split.map(&:to_i) }

sorted = abs.sort_by { |a, b| b }

time = 0
sorted.each do |a, b|
    time = time + a
    if time > b
        puts 'No'
        exit
    end
end

puts 'Yes'
