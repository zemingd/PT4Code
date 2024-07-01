s = gets.chop.chars
t = gets.chop.chars
puts s.zip(t).count{ |f, w| f == w }