while !((m, f, r = gets.split.map(&:to_i)).all? { |v| v == -1 })
  case m + f
    when 80..100 then grade = "A"
    when 65...80 then grade = "B"
    when 50...65 then grade = "C"
    when 30...50 then r >= 50 ? grade = "C" : grade = "D"
    when 0...30 then grade = "F"
  end
  grade = "F" if m == -1 || f == -1
  puts grade
end
