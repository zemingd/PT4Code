h, w = gets.split(" ").map(&:to_i)
ss = []
h.times do
  ss << gets.chomp.chars
end

h.times do |i|
  w.times do |j|
    next if ss[i][j] == "."
    tmp = ss[i][j]
    rem = 4
    flag = false

    if ss[i][j] == "#"
      ss[i][j] = "x"
      rem -= 1
    end
    if (i > 0) && ss[i-1][j] == "#" || ss[i-1][j] == "x"
      ss[i-1][j] = "x"
      rem -= 1
      flag = true
    end
    if (j > 0) && ss[i][j-1] == "#" || ss[i][j-1] == "x"
      ss[i][j-1] = "x"
      rem -= 1
      flag = true
    end
    if (ss[i][j+1] == "#") || ss[i][j+1] == "x" && rem >= 3
      ss[i][j+1] = "x"
      rem -= 1
      flag = true
    end
    if ss[i+1] && (ss[i+1][j] == "#" || ss[i+1][j] == "x") && rem >= 3
      ss[i+1][j] = "x"
      rem -= 1
      flag = true
    end

    if !flag
      ss[i][j] = tmp
    end
  end
end

ss.each do |s|
  s.each do |c|
    if c == "#"
      puts "No"
      exit
    end
  end
end

puts "Yes"