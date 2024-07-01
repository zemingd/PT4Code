m, n = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)
count = 0

a.each do |i|
  h - i
  count += 1
 
  if h <= 0 
    break
  end
end
 
puts count <= 2 ? "Yes" : "No"