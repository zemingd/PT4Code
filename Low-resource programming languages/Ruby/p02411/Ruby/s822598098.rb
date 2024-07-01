ARGF.each_line do |line|
  break if line =~ /-1 -1 -1/

  m, f, r = line.split.map(&:to_i)

  grade =
    case (m + f)
    when 0...30
      'F'
    when 30...50
      if r >= 50
        'C'
      else
        'D'
      end
    when 50...65
      'C'
    when 65...80
      'B'
    when 80..100
      'A'
    end
  puts grade
end