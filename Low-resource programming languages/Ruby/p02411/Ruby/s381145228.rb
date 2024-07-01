ARGF.each do |line|
  m, f, r  = line.split.map(&:to_i)
  break if (m + f + r) == -3

  if m == -1 || f == -1
    puts "F"
    next
  end

  point = m + f

  case point
  when 0..29
    puts 'F'
  when 30..49
    if r >= 50
      puts 'C'
    else
      puts 'D'
    end
  when 50..64
    puts 'C'
  when 65..79
    puts 'B'
  when 80..100
    puts 'A'
  end
end