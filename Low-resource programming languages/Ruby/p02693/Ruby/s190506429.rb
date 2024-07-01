r=gets.to_i
puts r-1 >= -gets.split.map(&:to_i).inject(:-) ? "OK" : "NG"