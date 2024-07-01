input = gets
h, w = input.split(' ')[0].to_i, input.split(' ')[1].to_i
matrix = []

h.times do |_|
  row = gets
  matrix.push(row.split(''))
end

def sharp?(str)
  return false if str == nil
  return str == '#'
end
judge = true

h.times do |idx1|
  w.times do |idx2|
    p idx1, idx2
    v = matrix[idx1][idx2]
    p v
    next if v == '.'

    v_left = idx2 > 1 ? matrix[idx1][idx2 - 1].strip : nil
    v_up = idx1 > 1 ? matrix[idx1 - 1][idx2].strip : nil
    v_right = idx2 < w - 1 ? matrix[idx1][idx2 + 1].strip : nil
    v_down = idx1 < h - 1 ? matrix[idx1 + 1][idx2].strip : nil
    judge = false if !sharp?(v_left) && !sharp?(v_up) && !sharp?(v_right) && !sharp?(v_down)
  end
end

p judge ? 'Yes' : 'No'
