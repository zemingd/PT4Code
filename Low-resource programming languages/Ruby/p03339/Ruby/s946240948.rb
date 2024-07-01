def main(s)
  min_count = s.size
  pre_change_count = 0
  suf_change_count = s.count("E")
  s.each_char do |char|
    suf_change_count -= 1 if char == "E"
    min_count = [min_count, pre_change_count + suf_change_count].min
    pre_change_count += 1 if char == "W"
  end
  min_count
end

_ = gets.to_i
s = gets.chomp
puts main(s)