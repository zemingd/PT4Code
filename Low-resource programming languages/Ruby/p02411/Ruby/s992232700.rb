until (m, f, r = gets.split.map(&:to_i)) == [-1,-1,-1]
  if m == -1 || f == -1
    puts "F"
    next
  end

  score = m + f
  case score
  when 80..100 then puts "A"
  when 65...80 then puts "B"
  when 50...65 then puts "C"
  when 30...50
    if r >= 50
      puts "C"
    else puts "D"
    end
  when 0...30 then puts "F"
  end
end