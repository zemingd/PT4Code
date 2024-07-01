d,n=gets.split.map(&:to_i)
k = ""
d.times do
  k += "00"
end
puts n.to_s + k
