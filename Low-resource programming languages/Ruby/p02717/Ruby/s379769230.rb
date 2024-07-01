def lscan; gets.split.map(&:to_i); end

a,b,c = lscan
a,b = b,a
a,c = c,a
puts [a,b,c]*' '