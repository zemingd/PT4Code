n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
max_color_num = 8
ans_min = 0
colors = Array.new(max_color_num+1, 0)
a.each do |i|
    if i < 400 then
        colors[0] += 1
    elsif i < 800 then
        colors[1] += 1
    elsif i < 1200 then
        colors[2] += 1
    elsif i < 1600 then
        colors[3] += 1
    elsif i < 2000 then
        colors[4] += 1
    elsif i < 2400 then
        colors[5] += 1
    elsif i < 2800 then
        colors[6] += 1
    elsif i < 3200 then
        colors[7] += 1
    else
        colors[8] += 1
    end
end

8.times do |i|
    ans_min += 1 if colors[i] != 0
end

ans_max = ans_min
ans_max += [max_color_num - ans_min, colors[8]].min
ans_min = 1 if ans_min == 0

puts [ans_min, ans_max].join(" ")