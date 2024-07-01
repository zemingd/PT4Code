N = gets.strip.to_i
counter = 0
array = gets.split(" ").map(&:to_i)

0.upto(N-1) do |i|
  (N-1).downto(i+1) do |j|
    if array[j] < array[j-1]
      array[j],array[j-1] = array[j-1],array[j]
      counter += 1
    end
  end
end

puts array.join(" ")
puts counter