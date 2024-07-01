h,w=gets.split.map(&:to_i).minmax
puts (h==1 ? 1 : (h*w+1)/2)
