    i="#"
loop{

w,h=gets.split(" ").map(&:to_i)

break if w==0 && h==0
puts a= ("#{i}"*w)
(h-1).times{puts a}

}
