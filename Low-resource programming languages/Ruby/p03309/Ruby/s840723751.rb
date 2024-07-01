a=gets.chomp.to_i
line=gets.chomp.split.map(&:to_i)
line.map!.with_index {|ai, i| ai - i - 1}
line.sort!
b = line[line.length/2]
puts line.map{|x| (x - b).abs}.inject(:+)

## 他の方のコードを参考にしました