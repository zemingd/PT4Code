n = gets.to_i
rates = gets.split.map(&:to_i)
colors = Hash.new(0)

anycolor = 0
rates.each do |s|
  if s < 400
    colors['gray'] += 1
  elsif s < 800
    colors['brown'] += 1
  elsif s < 1200
    colors['green'] += 1
  elsif s < 1600
    colors['skyblue'] += 1
  elsif s < 2000
    colors['blue'] += 1
  elsif s < 2400
    colors['yellow'] += 1
  elsif s < 2800
    colors['orange'] += 1
  elsif s < 3200
    colors['red'] += 1
  else
    anycolor += 1
  end
end

nonzeros = colors.count { |k, v| v > 0 }
min_ans = nonzeros
min_ans = 1 if min_ans == 0 && anycolor > 0
max_ans = nonzeros + anycolor
puts [min_ans, max_ans].join(' ')
