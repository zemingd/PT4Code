xy = gets.strip.split
puts xy[0] == xy[1] ? "=" : (xy == xy.sort ? "<" : ">")