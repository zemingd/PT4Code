strings = gets.chomp.chars.map(&:to_i)
old_num = strings.size
impossible = nil
while impossible.nil?
  check_count = 0
  impossible = 1 if strings.size == 0 || strings.size == 1
  (strings.size - 1).times do |i|
    before_strings_size = strings.size
    if strings[i] != strings[i + 1]
      strings.delete_at(i)
      strings.delete_at(i)
      break
    else
      check_count += 1
    end
    impossible = 1 if check_count == (before_strings_size - 1)
  end
end
puts old_num - strings.size
