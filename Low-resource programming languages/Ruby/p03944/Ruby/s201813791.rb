w, h, n = gets.chomp.split(' ')
w = w.to_i; h = h.to_i; n = n.to_i;

rect = Array.new(w, Array.new(h, 0))

n.times do
  point = gets.chomp.split(' ').map { |i| i.to_i }
  case point[2]
  when 1
    point[0].times do |i|
      rect[i] = Array.new(h, 1)
    end
  when 2
    (w - point[0]).times do |i|
      rect[w - i - 1] = Array.new(h, 1)
    end
  when 3
    point[1].times do |i|
      w.times do |j|
        rect[j][i] = 1
      end
    end
  when 4
    (h - point[1]).times do |i|
      w.times do |j|
        rect[j][h - i - 1] = 1
      end
    end
  end
end

puts rect.flatten!.count(0)