a, b = gets.split.map(&:to_i)
s = gets.chomp.split("")

flag = 1
s.each_with_index { |value, index|
  if index < a || index > a
    unless value =~ /^[0-9]+$/
      flag = 0
      break
    end
  end

  if index == a
    unless value == "-"
      flag = 0
      break
    end
  end
}

puts flag == 1 ? "Yes" : "No"