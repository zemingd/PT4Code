# abc107 B
h, w = gets.split.map(&:to_i)
c = h.times.map {
  gets.chomp.chars
}
# puts c.map{|x| x.join }.join("\n")
c.reject!{|cc|cc.all?{|x|x == '.'}}
c = c.transpose
c.reject!{|cc|cc.all?{|x|x == '.'}}
c = c.transpose
puts c.map{|x| x.join }.join("\n")
