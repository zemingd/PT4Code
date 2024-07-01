s = gets.split('').map(&:to_i)
count = 700
s.each do |i|
  if i == "o"
    count = count + 100
  end
end
puts count