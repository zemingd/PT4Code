io = STDIN
s=io.gets.chomp
red=s.split(//).count("1")
blue=s.size - red
puts [red,blue].min*2
