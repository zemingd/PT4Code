def lscan; gets.split.map(&:to_i); end

n, a, b = lscan

p [a*n, b].min 