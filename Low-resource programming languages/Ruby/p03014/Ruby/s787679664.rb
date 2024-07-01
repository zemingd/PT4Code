h, w = gets.strip.split.map(&:to_i)
room = readlines.map {|line| line.strip.split('') }

def extend(arr)
  ret = []
  darr = arr.dup
  until darr.empty?
    c = darr.shift 
    ret << c if c.zero?
    c.times { ret << c }
  end
  ret
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
  end
end

h_illuminations.each_with_index do |l, i|
  h_illuminations[i] = extend(l)
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
end

v_illuminations.each_with_index do |l, i|
  v_illuminations[i] = extend(l)
end

v_illuminations = v_illuminations.transpose

p v_illuminations.flatten.zip(h_illuminations.flatten).map {|l,r| l+r }.uniq.sort.last - 1

