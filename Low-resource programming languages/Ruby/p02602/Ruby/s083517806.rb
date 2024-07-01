n, k = *gets.split(" ").map(&:to_i)
a_list = gets.split(" ").map(&:to_i)

prev = nil
for i in 0..n do
  values = []
  k.times do |j|
    return if a_list[i + j].nil?
    values << a_list[i + j]
  end
  current = values.inject(:*)
  if prev
    if prev < current
      puts 'Yes'
    else
      puts 'No'
    end
  end
  prev = current
end
