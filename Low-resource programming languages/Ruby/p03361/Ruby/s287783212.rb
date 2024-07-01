H,W = gets.split.map(&:to_i)
S = H.times.map{gets.chomp}
D = [[1,0],[0,1],[-1,0],[0,-1]]

H.times do |h|
  W.times do |w|
    if S[h][w] == "."
      next
    end

    dont = true
    D.each do |d|
      x, y = d
      ww = w + x
      hh = h + y
      next if ww < 0 || W <= ww
      next if hh < 0 || H <= hh
      dont = false if S[hh][ww] == "#"
    end
    if dont
      puts "No"
      exit
    end
  end
end

puts "Yes"