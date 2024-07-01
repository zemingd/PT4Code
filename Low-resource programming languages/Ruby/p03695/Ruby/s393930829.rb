gets

colors = [false] * 8
top = 0

gets.split(" ").each do |e|
    v = e.to_i / 400
    if v <= 7
        colors[v] = true
    else
        top += 1
    end
end

min = [colors.count {|v|v}, 1].max
max = [colors.count {|v|v} + top, 8].min

puts "#{min} #{max}"