a = (1...10000).map{|i|
  b = i.to_s.chars.map(&:to_i).inject(0){|b, c| b += c}.to_r
  [i / b, i]
}
a.sort!
(0...gets.to_i).each do |i|
  p a[i][1]
end
