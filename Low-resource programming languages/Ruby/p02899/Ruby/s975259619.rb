n = gets.to_i
student = gets.strip.split.map(&:to_i)
new = []
(1..n).each do |x|
  new[student[x-1]-1] = x
end
print new.join(" ")