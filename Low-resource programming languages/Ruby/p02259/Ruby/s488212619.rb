N = gets.to_i
data = gets.split.map { |e| e.to_i }
swap_count = 0

for i in 0..N-1
  (N-1).downto(i+1) do |j|
    if data[j] < data[j-1]
      data[j],data[j-1] = data[j-1],data[j]
      swap_count += 1
    end
  end
end

puts data.join(" ")
p swap_count