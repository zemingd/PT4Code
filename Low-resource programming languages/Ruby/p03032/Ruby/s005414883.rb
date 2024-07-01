n, k = gets.chomp.split.map(&:to_i)
v = gets.chomp.split.map(&:to_i)

max = 0
(0..([n, k].min)).each do |i|
  (0..i).each do |left|
    right = i - left
    list = v[0, left] + v[-right, right]
    list.sort!
    (k-i).times do
      break if list.empty?
      break if list[0] >= 0
      list.shift
    end
    sum = list.reduce(&:+).to_i
    max = sum if max < sum
  end
end

puts(max)