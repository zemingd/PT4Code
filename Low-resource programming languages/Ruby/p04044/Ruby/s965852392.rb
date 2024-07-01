arr = gets.strip.split(" ").map!(&:to_i)
n = arr[0]
str = Array.new(n)
n.times do |i|
  str[i] = gets.strip
end

n.times do |i|
  min = i
  i.step(n-1) do |j|
    if(str[min] > str[j]) then
      s = str[min]
      str[min] = str[j]
      str[j] = s
      min = j
    end
  end
end

n.times do |i|
  print str[i]
end
puts