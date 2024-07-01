n = gets.to_i
student = gets.strip.split.map(&:to_i)
new = []
(0..n-1).each do |x|
  new[x] = student.index(x+1)+1
end
print new.join(" ")