n, m=gets.split.map &:to_i
a=(1..n).map{gets.chomp}.select{|e|e[?#]}
a=a.map(&:chars).transpose.select{|e|e.any?{|c|c==?#}}
puts a.transpose.map(&:join)*$/