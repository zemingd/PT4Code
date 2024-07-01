io = STDIN
n=io.gets.to_i
$a=io.gets.split.map(&:to_i)
puts $a.map{|x|x-1}.inject(&:+)
