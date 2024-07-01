h, w = gets.chomp.split.map(&:to_i)

canvas = []

h.times do
  canvas << gets.chomp.chars
end

w.times do |x0|
  h.times do |y0|
    next if canvas[y0][x0] == '.'
    count = 0
    count += 1 if x0 > 0 && canvas[y0][x0 - 1] == '#'
    count += 1 if y0 > 0 && canvas[y0 - 1][x0] == '#'
    count += 1 if x0 < w - 1 && canvas[y0][x0 + 1] == '#'
    count += 1 if y0 < h - 1 && canvas[y0 + 1][x0] == '#'

    if count == 0
      puts 'No'
      exit
    end
  end
end

puts 'Yes'