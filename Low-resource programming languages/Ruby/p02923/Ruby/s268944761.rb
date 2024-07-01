n = gets.chomp.to_i
c = []
j = 0
arr = gets.chomp.split(' ').map(&:to_i)
m = arr.shift
arr.each do |i|
  if m >= i
    m = i
    j += 1
  else
    c << j
    m = i
    j = 0
  end
end
c << j
print(c.max)

