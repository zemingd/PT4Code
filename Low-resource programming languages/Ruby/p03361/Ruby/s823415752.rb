input = gets
h, w = input.split(' ')[0].to_i, input.split(' ')[1].to_i
matrix = []

h.times do |_|
  row = gets
  matrix.push(row.split(','))
end

def sharp?(str)
  return !!(v_left&.== '#')
end
judge = true

h.times do |i1|
  idx1 = i1 + 1
  w.times do |i2|
    idx2 = i2 + 1
    v = matrix[idx1][idx2]
    next if v == '.'

    v_left = idx2 > 1 ? matrix[idx1][idx2 - 1] : nil
    v_up = idx1 > 1 ? matrix[idx1 - 1][idx2] : nil
    v_right idx2 < w ? matrix[idx1][idx2 + 1] : nil
    v_down idx1 < h ? matrix[idx1 + 1][idx2] : nil
    judge = false if sharp?(v_left) || sharp?(v_up) || sharp?(v_right) || sharp?(v_down)
  end
end

p judge ? 'Yes' : 'No'