def main(s)
  Array.new(s.size).map.with_index do |_, idx|
    pre_change_count = idx > 0 ? s[0..(idx - 1)].count("W") : 0
    suf_change_count = s[(idx + 1)..-1].count("E")
    p [idx, pre_change_count, suf_change_count]
    pre_change_count + suf_change_count
  end.min
end

_ = gets.to_i
s = gets.chomp
puts main(s)