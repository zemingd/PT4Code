h,w=gets.split.map(&:to_i)
d=(w+1)/2
e=h.even? ? 0 : d
puts (2*d-1) * (h/2) + e
