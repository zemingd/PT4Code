n,l = gets.strip.split.map(&:to_i)
str = []
n.times do
  str << gets.strip.to_s
end
strs = str.sort
puts strs.join("")