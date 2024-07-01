h, w = gets.strip.split.map(&:to_i)
room =  $<.map(&:bytes)
 
h.times do |i|
  room[i] = room[i][0...w]
end

def extend(arr)
  arr.map {|c| c.zero? ? c : [c]*c }.flatten
end

v_illuminations = Array.new(w){ [] }
h_illuminations = Array.new(h){ [] }

h.times do |i|
  line = room[i]
  space_count = 0
  w.times do |j|
    space = line[j]
    if space == 35
      h_illuminations[i] << space_count if space_count > 0
      h_illuminations[i] << 0
      space_count = 0
    end

    if space == 46
      space_count += 1
      h_illuminations[i] << space_count if j == line.length-1
    end

    h_illuminations[i] = extend(h_illuminations[i])
  end
end


transposed_room = room.transpose
w.times do |i|
  line = transposed_room[i]
  space_count = 0
  h.times do |j|
    space = line[j]
    if space == 35
      v_illuminations[i] << space_count if space_count > 0
      v_illuminations[i] << 0
      space_count = 0
    end

    if space == 46
      space_count += 1
      v_illuminations[i] << space_count if j == line.length-1
    end
  end
  v_illuminations[i] = extend(v_illuminations[i])
end

v_illuminations = v_illuminations.transpose
 
#h_illuminations.each {|l| p l }
#v_illuminations.each {|l| p l }

result = 0
h.times do |i|
  w.times do |j|
    tmp_result = v_illuminations[i][j] + h_illuminations[i][j] - 1
    result = tmp_result if tmp_result > result
  end
end

p result
