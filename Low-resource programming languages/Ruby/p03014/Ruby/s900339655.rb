h, w = gets.strip.split.map(&:to_i)
room = readlines.map {|line| line.strip.split('') }

def extend(arr)
  arr.map {|c| c.zero? ? c : [c]*c }.flatten
end

v_illuminations = Array.new(w){ [] }
h_illuminations = Array.new(h){ [] }

room.each_with_index do |line, i|
  space_count = 0
  line.each_with_index do |space, j|
    if space == '#'
      h_illuminations[i] << space_count if space_count > 0
      h_illuminations[i] << 0
      space_count = 0
    end

    if space == '.'
      space_count += 1
      h_illuminations[i] << space_count if j == line.length-1
    end

    h_illuminations[i] = extend(h_illuminations[i])
  end
end


room.transpose.each_with_index do |line, i|
  space_count = 0
  line.each_with_index do |space, j|
    if space == '#'
      v_illuminations[i] << space_count if space_count > 0
      v_illuminations[i] << 0
      space_count = 0
    end

    if space == '.'
      space_count += 1
      v_illuminations[i] << space_count if j == line.length-1
    end
  end
  v_illuminations[i] = extend(v_illuminations[i])
end

v_illuminations = v_illuminations.transpose

#h_illuminations.each do |l|
#  p l
#end

#v_illuminations.each do |l|
#  p l
#end

result = 0
h.times do |i|
  w.times do |j|
    tmp_result = v_illuminations[i][j] + h_illuminations[i][j] - 1
    result = tmp_result if tmp_result > result
  end
end

p result
