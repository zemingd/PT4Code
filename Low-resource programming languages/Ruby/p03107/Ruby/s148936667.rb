strings = gets.chomp.chars.map(&:to_i)
old_num = strings.size
impossible = false
while !impossible
  check_count = 0
  impossible = true if strings.size == 0 || strings.size == 1
  if !impossible
    before_strings_size = strings.size
    (strings.size - 1).times do |i|
      if strings[i] != strings[i + 1]
        strings.delete_at(i)
        strings.delete_at(i)
        break
      else
        check_count += 1
      end
    end
    impossible = true if check_count == (before_strings_size - 1)
  end
end
puts old_num - strings.size