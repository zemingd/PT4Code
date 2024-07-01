while true
  # 中間試験の点数、期末試験の点数、再試験の点数
  m, f, r = $stdin.readline.split(" ").map {|s| s.to_i }

  if m == -1 && f == -1 && r == -1
    break
  end

  if m == -1 || f == -1
    puts "F"
    next
  elsif m + f >= 80
    puts "A"
    next
  elsif m + f >= 65
    puts "B"
    next
  elsif m + f >= 50
    puts "C"
    next
  elsif m + f >= 30
    if r >= 50
      puts "C"
    else
      puts "D"
    end
    next
  else
    puts "F"
  end
end

