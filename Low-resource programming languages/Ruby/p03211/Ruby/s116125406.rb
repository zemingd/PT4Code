a=gets.chomp
m=(753-a[0..2].to_i).abs

for i in 1..(a.length-3)
  m=(753-a[i..i+2].to_i).abs if m>(753-a[i..i+2].to_i).abs
end
puts m
