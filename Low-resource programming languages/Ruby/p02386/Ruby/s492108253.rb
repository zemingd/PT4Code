bool = true
array = []
count = gets.to_s.chomp.to_i
count.times do |n|
  array << gets.to_s.chomp.split(" ").map(&:to_i)
end
6.times do |i|
  num = array[0][i]
  count.times do |j|
    if num == array[j][i]
      bool = false
      break
    end
  end
  break if !bool
end
puts bool ? "YES" : "NO"