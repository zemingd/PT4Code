    i="#"
loop{

w,h=gets.split(" ").map(&:to_i)

break if w==0 && h==0
 h.times{i*w}
puts ""

}
