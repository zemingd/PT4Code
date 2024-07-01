def strings_of_impurity(s, t)
  s_char_pos = Hash.new { |h, k| h[k] = [] }
  s.each_char.with_index do |c, i|
    s_char_pos[c] << i
  end

  next_pos = ->(char, cur_pos) {
    return -1 unless s_char_pos.has_key?(char)
    times = cur_pos / s.size
    offset = cur_pos % s.size

    n = s_char_pos[char].bsearch { |n| n > offset }
    return times * s.size + n if n

    (times + 1) * s.size + s_char_pos[char][0]
  }

  pos = -1
  t.each_char do |c|
    pos = next_pos.call(c, pos)
    return -1 if pos == -1
  end
  pos + 1
end

s = gets.chomp
t = gets.chomp
puts strings_of_impurity(s, t)