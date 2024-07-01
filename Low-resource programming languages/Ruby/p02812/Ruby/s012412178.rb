n = gets.chomp.to_i
a = gets.chomp.split('')
n = 0
a.length.times do |i|
if a[i] == "A" && a[i+1] == "B" && a[i+2] == "C"
  n = n + 1
end
end
puts n