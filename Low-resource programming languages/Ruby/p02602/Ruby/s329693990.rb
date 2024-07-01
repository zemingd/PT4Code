n, k = *gets.split(" ").map(&:to_i)
a_list = gets.split(" ").map(&:to_i)

results = []
for i in 0..n do
  values = []
  k.times do |j|
    values << a_list[i + j]
  end
  if values.size == values.compact.size
    results << values.inject(:*)
  end
end

results.each_with_index do |v, i|
  break if results[i + 1].nil?
  if v < results[i + 1]
    puts "Yes"
  else
    puts "No"
  end
end