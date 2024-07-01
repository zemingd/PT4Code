# 解説PDFを見たけどこれでいいかまだ分からない
n = gets.to_i
x = []
y = []
h = []
n.times do |i|
  x[i], y[i], h[i] = gets.split.map(&:to_i)
end
ok = false
(0..100).each do |cy|
  (0..100).each do |cx|
    height = nil
    ok = true
    n.times do |i|
      hh = h[i] + (x[i] - cx).abs + (y[i] - cy).abs
      if h[i] > 0
        if height.nil?
          height = hh
        elsif height != hh
          ok = false
          break
        end
      else
        if !height.nil? && hh < height
          ok = false
          break
        end
      end
    end
    if ok
      puts "#{cx} #{cy} #{height}"
      break
    end
  end
  break if ok
end
