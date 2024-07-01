n = gets.chomp
rates = gets.chomp.split.map(&:to_i)

colors = Array.new(9) { Array.new }
rates.each do |rate|
    x = rate / 400
    case x
        when 0..7
            colors[x] << rate
        else
            colors[8] << rate
    end
end

count = 0
8.times do |i|
    next if colors[i].empty?
    count += 1
end

answer = []
if colors[8].empty?
    answer << count << count
elsif count == 0
    answer << (count + colors[8].size) << (count + colors[8].size)
else
    answer << count << (count + colors[8].size)
end
puts answer.join(" ")
