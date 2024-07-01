w, h, n = gets.split.map(&:to_i)

left = 0
bottom = 0
top = h
right = w

n.times do
  xi, yi, ai = gets.split.map(&:to_i)

  case ai
  when 1
    left = xi if left < xi
  when 2
    right = xi if right > xi
  when 3
    bottom = yi if bottom < yi
  when 4
    top = yi if top > yi
  else
  end
end

def calc_area(width, height)
  return 0 unless width > 0 && height > 0
  width * height
end

puts calc_area(right - left, top - bottom)
