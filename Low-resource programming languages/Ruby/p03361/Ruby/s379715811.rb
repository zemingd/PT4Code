h,w = gets.split.map(&:to_i)
s = []
h.times do |i|
  s[i] = gets.chomp.split("")
end

h.times do |i|
  w.times do |j|
    if s[i][j] == "#"
      dec = false
      [[i-1,j],[i+1,j],[i,j-1],[i,j+1]].each do |hi,wi|
        next if hi < 0 || hi > h - 1 || wi < 0 || wi > w - 1
        if s[hi][wi] == "#"
          dec = true
          break
        end
      end
      if !dec
        puts "No"
        exit
      end
    end
  end
end

puts "Yes"
