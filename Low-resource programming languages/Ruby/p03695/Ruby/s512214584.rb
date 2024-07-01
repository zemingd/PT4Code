N = gets.to_i
scores = gets.split.map(&:to_i)

# 灰, 茶, 緑, 水, 青, 黄, 橙, 赤, 自由
color = Array.new(9, 0)

scores.each do |i|
	if i < 400
		color[0] += 1
	elsif i < 800
		color[1] += 1
	elsif i < 1200
		color[2] += 1
	elsif i < 1600
		color[3] += 1
	elsif i < 2000
		color[4] += 1
	elsif i < 2400
		color[5] += 1
	elsif i < 2800
		color[6] += 1
	elsif i < 3200
		color[7] += 1
	else
		color[8] += 1
	end
end

ans_min = color[0..7].count {|i| 0 < i}

if 8-ans_min <= color[8]
	ans_max = 8
else
	ans_max = ans_min + color[8]
end

ans_min = 1 if ans_min == 0

p "#{ans_min} #{ans_max}"
