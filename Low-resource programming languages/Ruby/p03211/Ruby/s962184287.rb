a = gets
m = 753
for i in 0..(a.length)
  m = (a[i..(i+2)].to_i - 753).abs if m > (a[i..(i+2)].to_i - 753).abs
end
puts m