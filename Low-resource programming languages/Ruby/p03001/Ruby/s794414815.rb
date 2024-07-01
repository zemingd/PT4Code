w,h,x,y = gets.split.map(&:to_i)
puts [w*h/2.0,x*2==w&&y*2==h ? 1 : 0]*" "
