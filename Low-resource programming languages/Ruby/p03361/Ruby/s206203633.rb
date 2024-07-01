h, w = gets.chomp.split(" ").map(&:to_i)

m = []

h.times do 
  m << gets.chomp.split("")
end

h.times do |i|
  w.times do |j|
    next if m[i][j] == "."
    flag = true
    [[-1, 0], [1, 0], [0, 1], [0, -1]].each do |dh, dw|
      if i + dh >= 0 && i + dh < h && j + dw >= 0 && j + dw < w && m[i + dh][j + dw] == "#"
        flag = false
      end
    end
    if flag
      puts "No"
      exit
    end
  end
end
puts "Yes"