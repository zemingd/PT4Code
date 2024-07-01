input = gets
h, w = input.split(' ')[0].to_i, input.split(' ')[1].to_i
matrix = []

h.times do |_|
  row = gets
  matrix.push(row.split(''))
end

def sharp?(str)
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
    if (v_left != nil && !sharp?(v_left)) && (v_up != nil && !sharp?(v_up)) && (v_right != nil && !sharp?(v_right)) && (v_down != nil && !sharp?(v_down))
      judge = false
    end
  end
end

p judge ? 'Yes' : 'No'