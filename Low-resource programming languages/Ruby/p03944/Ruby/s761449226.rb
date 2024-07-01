w, h, n = gets.chomp.split.map(&:to_i)
w_range = [0, w]
h_range = [0, h]
dots = []
n.times { dots << gets.chomp.split.map(&:to_i) }

dots.each do |dot|
  case dot[2]
  when 1
    w_range[0] = dot[0] if w_range[0] < dot[0]
  when 2
    w_range[1] = dot[0] if w_range[1] > dot[0]
  when 3
    h_range[0] = dot[1] if h_range[0] < dot[1]
  when 4
    h_range[1] = dot[1] if h_range[1] > dot[1]
  else
    raise
  end
end

area = (w_range[1] - w_range[0]) * (h_range[1] - h_range[0])
puts area >= 0 ? area : 0