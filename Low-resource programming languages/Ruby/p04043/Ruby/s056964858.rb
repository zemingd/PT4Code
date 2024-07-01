vals = gets.split(" ").map(&:to_i)
five = 0
seven = 0
vals.each { |val|
  case val
    when 5
      five += 1
    when 7
      seven += 1
  end
}
puts five == 2 && seven == 1 ? :YES : :NO
