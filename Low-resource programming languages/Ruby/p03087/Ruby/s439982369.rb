num, qnum, = gets.strip.split.map &:to_i
str = gets.strip
str << ' '
ary = str.split('AC').map{|i| i.gsub(' ','').size }
score = ary.size - 1
lmap = []
ary.inject(-2){|i,j| x = i + j + 2; lmap << x; x }
rmap = []
ary.reverse_each.inject(-2){|i,j| x = i + j + 2; rmap << x; x }
qnum.times do 
  qscore = score
  ql, qr, = gets.strip.split.map{|i| i.to_i}
  ql -= 1
  qr = str.size - 1 - qr
  lmap.each_with_index do |i, t|
    if ql <= i then
      qscore -= t
      break
    end
  end
  rmap.each_with_index do |i, t|
    if qr <= i then
      qscore -= t
      break
    end
  end
  puts qscore
end
